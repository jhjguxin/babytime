require "spec_helper"

describe BabyTime::Client do
  client = BabyTime::Client.new
  
  describe "#initialize" do
    it "should have one default site" do
      client.site.should eq("t0.117show.com/")
    end
  end
end
