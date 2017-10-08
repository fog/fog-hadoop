# fog-hadoop
[![Gem Version](https://badge.fury.io/rb/fog-hadoop.svg)](https://badge.fury.io/rb/fog-hadoop)[![Build Status](https://travis-ci.org/fog/fog-hadoop.svg?branch=master)](https://travis-ci.org/fog/fog-hadoop) [![Code Climate](https://lima.codeclimate.com/github/fog/fog-hadoop/badges/gpa.svg)](https://lima.codeclimate.com/github/fog/fog-hadoop) [![Coverage Status](https://coveralls.io/repos/fog/fog-hadoop/badge.svg?branch=master&service=github)](https://coveralls.io/github/fog/fog-hadoop?branch=master)

## Fog connector for Hadoop

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
  hadoop_yarn_api_url:     "http://<resource_manager_host>:8088/",
  hadoop_hdfs_api_url:     "http://<namenode>:50070/"
}
```

* Use [Yarn](docs/yarn.md)    
* Use [HDFS](docs/hdfs.md)
 
# Support

Check in this [link](supported.md)

# Contribute
Read the [contribute](CONTRIBUTING.md) documentation

# Development

You can use this [Vagrant Hadoop](https://github.com/vangj/vagrant-hadoop-2.4.1-spark-1.0.1) repo to have a environment to dev.
