require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require 'rack/cache'
require "./app"

use Rack::Cache,
  :verbose     => true,
  :metastore   => 'file:/var/cache/rack/meta',
  :entitystore => 'file:/var/cache/rack/body'
 
run Sinatra::Application