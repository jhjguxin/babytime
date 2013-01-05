require "spec_helper"

describe BabyTime::Interface::Test do
  client = BabyTime::Client.new
  
  it "https_post_request_test" do
    client.test.https_post_request_test.value.should eq(nil)
  end
  
  it "https_get_request_test" do
    client.test.https_get_request_test.value.should eq(nil)
  end
  
  it "http_request_test" do
    client.test.http_request_test.value.should eq(nil)
  end
end
