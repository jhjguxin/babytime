require "spec_helper"

describe BabyTime::Interface::User do
  
  it "initializes with a User" do
    expect{BabyTime::Interface::User.new(BabyTime::Client.new)}.not_to raise_error
  end
end
