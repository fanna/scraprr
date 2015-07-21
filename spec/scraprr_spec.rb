require "spec_helper"
require_relative "../scrap"

describe "my_str" do
  context "given an empty string" do
    it "returns an empty string" do
      expect(my_str).to eql("")
    end
  end
end
