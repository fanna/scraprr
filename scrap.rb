require 'sinatra'
require "net/http"
require "uri"
require "rubygems"
require_relative "lib/string_poster.rb"

set :port, 4567

post "/" do
  my_str = params[:myFinalString]
  puts my_str
  if StringPoster.push_to_stream(my_str)
    return status 200
  else
    return status 400
  end
end


