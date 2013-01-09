require "spec_helper"

describe BabyTime::Interface::Suggestion do
  
  it "initializes with a Suggestion" do
    expect{BabyTime::Interface::Suggestion.new(BabyTime::Client.new)}.not_to raise_error
  end
end
