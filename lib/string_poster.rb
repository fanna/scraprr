class StringPoster

  def self.to_stream(str)
   	uri = URI.parse("http://localhost:8989/")
	 	Net::HTTP.post_form(uri, "q" => str)
  end
end
