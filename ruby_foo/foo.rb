require 'rubygems'
require 'sinatra'

get '/' do
  host = ENV['VCAP_APP_HOST']
  port = ENV['VCAP_APP_PORT']
  "<h1>Hello from the Cloud Foundry! WOW!! </h1> <h2>via: #{host}:#{port}</h2>"
end
