require "spec_helper"

describe BabyTime::Interface::Base do
  
  it "initializes with a Client" do
    expect{BabyTime::Interface::Base.new(BabyTime::Client.new)}.not_to raise_error
  end
end
