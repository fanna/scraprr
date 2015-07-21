require 'sinatra'
require "net/http"
require "uri"
require "rubygems"
require_relative "lib/string_poster.rb"

set :port, 4567

post "/" do
  my_str = params[:myFinalString]
  puts my_str
  StringPoster.to_stream(my_str)
end


