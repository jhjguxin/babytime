require "spec_helper"

describe BabyTime::Interface::Knowledge do
  
  it "initializes with a Knowledge" do
    expect{BabyTime::Interface::Knowledge.new(BabyTime::Client.new)}.not_to raise_error
  end
end
