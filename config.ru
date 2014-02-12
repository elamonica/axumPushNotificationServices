require 'rubygems'
require 'bundler'
Bundler.require
require 'yaml'
require 'faye'
require 'private_pub'

Faye::WebSocket.load_adapter('thin')

PrivatePub.load_config(File.expand_path("../config/private_pub.yml", __FILE__), "production")
run PrivatePub.faye_app