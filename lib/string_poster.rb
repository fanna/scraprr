class StringPoster

  SERVER_URL = "http://localhost:8989/"

  def self.to_stream(str)
   	uri = URI.parse(SERVER_URL)
	 	Net::HTTP.post_form(uri, "q" => str)
  end
end
