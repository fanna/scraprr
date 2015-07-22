require 'byebug'
class StringPoster

  def self.push_to_stream(str)
    return false if invalid_string?(str)

   	uri = URI.parse(server_url)
    res = Net::HTTP.post_form(uri, "q" => str)

    if res.kind_of? Net::HTTPSuccess
      true
    else
      false
    end
    rescue Errno::ECONNREFUSED
    false

  end

  def self.server_url
    "http://localhost:8989"
    #----put this before deploying to heroku----
    #ENV["STREAM_URL"] || "http://localhost:8989"
    #-------------------------------------------
  end

  def self.invalid_string?(str)
    str.empty? ||  str.include?(" ")
  end

end
