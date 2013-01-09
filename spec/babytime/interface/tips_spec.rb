require "spec_helper"

describe BabyTime::Interface::Tips do
  
  it "initializes with a Tips" do
    expect{BabyTime::Interface::Tips.new(BabyTime::Client.new)}.not_to raise_error
  end
end
