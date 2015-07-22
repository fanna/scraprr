require "string_poster"

describe StringPoster do

  describe ".push_to_stream" do

    context "given 'http://localhost:8989'" do

      it "returns true" do
        allow(StringPoster).to receive(:server_url) do
          "http://localhost:8989"
        end

      expect(described_class.push_to_stream("word")).to eq(true)
      end
    end

    context "given 'http://localhost:9999/'" do

      it "returns false" do
        allow(StringPoster).to receive(:server_url) do
          "http://localhost:9999/"
        end

      expect(described_class.push_to_stream("word")).to eq(false)
      end
    end

  end
end
