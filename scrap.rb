require 'sinatra'
require 'json'
require "net/http"
require "uri"

set :port, 4567

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
end
