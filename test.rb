#!/usr/bin/env ruby
require "socket"
include Socket::Constants
require "date"
require 'yaml'


    file = YAML.load_file(Dir.pwd + "/volcano.conf")
    file.each_pair do |key, value|
        self.instance_variable_set("@#{key}", value) 
    end
    puts @ip
    puts @MAX_PORT
