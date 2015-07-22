require "spec_helper"
require_relative "../scrap"

describe "scraprr" do
  let(:example_string_request) {
    {:myFinalString => "test"}
  }

   let(:example_invalid_request) {
     {:myFinalString => "test test"}
   }

  describe "POST /" do
    context "valid string request" do

      before do
        post "/", example_string_request
      end
      it "responds with 200 OK" do
        expect(last_response.status).to eql(200)
      end
    end
    context "invalid request" do

      before do
        post "/", example_invalid_request
      end
      it "responds with 400 Bad Request" do
        expect(last_response.status).to eql(400)
      end
    end
  end
end
