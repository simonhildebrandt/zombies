require 'rspec/expectations'

RSpec::Matchers.define :be_at do |x, y|
  match do |actual|
    expected = Location.new(x, y, nil)
    actual.location == expected
  end
  failure_message do |actual|
    "expected that #{actual} would be at #{expected} instead of #{actual.location}"
  end
end
