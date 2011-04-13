require 'rubygems'
require 'sinatra'

get '/' do
  host = ENV['VMC_APP_HOST']
  port = ENV['VMC_APP_PORT']
  "<h1>Hello from the Cloud Foundry!</h1>" +
    "<p> See <a href=\"/env\">/env</a> for environment information</p"
end

get '/env' do
  res = ''
  ENV.each do |k, v|
    res << "#{k}: #{v}<br/>"
  end
  res
end

get '/ruby' do
  res =  "<b>RUBY_VERSION</b> = #{RUBY_VERSION}<br/>"
  res << "<b>RUBY_PATCHLEVEL</b> = #{RUBY_PATCHLEVEL}"
  res
end
