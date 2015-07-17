require 'sinatra'
require 'json'
require "net/http"
require "uri"
require "rubygems"
require "rest-client"

#set :port, 4567

get '/' do
 erb :sites
end

post "/" do
	myClr = params[:myColor]
	myStr = params[:myFinalString]
	mySpd = params[:mySpeed]

	gay_list = ["#FF0000", "#FF8000", "#FFFF00", "#008000", "#0000FF", "#A000C0"]
	repub_list = ["#FF0000","#FFFFFF", "#0000FF"]
	classic = "#000000"


	if myClr == "classic"
		puts classic

	elsif myClr == "gay_clr"
		puts gay_list.shuffle.sample

	elsif myClr == "repub_clr"
		puts repub_list.shuffle.sample

	else
		puts classic
	end


	if mySpd == "200"
		puts "200"

	elsif mySpd == "250"
		puts "250"

	elsif mySpd == "300"
		puts "300"

	else
		puts "200"
	end

	puts myStr
	to_stream(myStr)


end

def to_stream(str) 
	uri = URI.parse("http://streamrr.herokuapp.com/")
	mystr = str
	# Shortcut
	response = Net::HTTP.post_form(uri, "q" => mystr)
end

