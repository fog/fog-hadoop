module Fog
  module Hadoop
    module Core
      attr_reader :yarn_host

      # fallback
      def self.not_found_class
        Fog::Compute::OpenStack::NotFound
      end

      def initialize_identity(options)
        # Create @openstack_* instance variables from all :openstack_* options
        options.select { |x| x.to_s.start_with? 'hadoop' }.each do |hadoop_param, value|
          instance_variable_set "@#{hadoop_param}".to_sym, value
        end

        @hadoop_yarn_url ||= options[:hadoop_yarn_url]

        if @hadoop_yarn_url
          @openstack_can_reauthenticate = false
        else
          missing_credentials = []

          unless @hadoop_yarn_url
            missing_credentials << 'hadoop_yarn_url'
          end
          raise ArgumentError, "Missing required arguments: #{missing_credentials.join(', ')}" unless missing_credentials.empty?

        end
      end

      def credentials
        options = {
          :provider                    => 'hadoop',
          :hadoop_yarn_url             => @hadoop_yarn_url
        }
        hadoop_options.merge options
      end

      def reload
        @connection.reset
      end

      private

      def request(params, parse_json = true)
        retried = false
        begin
          response = @connection.request(params.merge(
                                           :headers => {
                                             'Content-Type' => 'application/json',
                                             'Accept'       => 'application/json'
                                           }.merge!(params[:headers] || {}),
                                           :path    => "#{@path}/#{params[:path]}"
          ))
        rescue Excon::Errors::Unauthorized => error
          # token expiration and token renewal possible
          if error.response.body != 'Bad credentials' && !retried
            set_api_path
            retried = true
            retry
          # bad credentials or token renewal not possible
          else
            raise error
          end
        rescue Excon::Errors::HTTPStatusError => error
          raise case error
                when Excon::Errors::NotFound
                  self.class.not_found_class.slurp(error)
                else
                  error
                end
        end

        if !response.body.empty? && response.get_header('Content-Type').match('application/json')
          # TODO: remove parse_json in favor of :raw_body
          response.body = Fog::JSON.decode(response.body) if parse_json && !params[:raw_body]
        end

        response
      end

      def set_api_path
        # if the service supports multiple versions, do the selection here
      end
      
      def hadoop_options
        options = {}
        # Create a hash of (:openstack_*, value) of all the @openstack_* instance variables
        instance_variables.select { |x| x.to_s.start_with? '@hadoop' }.each do |hadoop_param|
          option_name = hadoop_param.to_s[1..-1]
          options[option_name.to_sym] = instance_variable_get hadoop_param
        end
        options
      end
    end
  end
end
