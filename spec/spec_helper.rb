require 'rspec'

RSpec.configure do |c|
  c.mock_with :rspec
end

require 'babytime'
require 'rspec'
require 'rspec/autorun'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
