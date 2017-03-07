# fog-hadoop
[![Build Status](https://travis-ci.org/aljesusg/fog-hadoop.svg?branch=master)](https://travis-ci.org/aljesusg/fog-hadoop)

Fog connector for Hadoop

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fog-hadoop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fog-hadoop
## Usage

### Initial Setup

Require the gem:

```ruby
require "fog/hadoop"
```


Connection parameters:

```ruby
@connection_params = {
  hadoop_compute_api_url:     "http://<resource_manager_host>:8088/"
}
```
    
* Use [Yarn](docs/yarn.md)    

# Contribute
Read the [contribute](docs/CONTRIBUTING.md) documentation

# Development

You can use this [Vagrant Hadoop](https://github.com/vangj/vagrant-hadoop-2.4.1-spark-1.0.1) repo to have a environment to dev.

