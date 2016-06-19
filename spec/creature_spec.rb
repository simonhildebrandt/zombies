require 'spec_helper'
require 'creature'

describe Creature do
  let(:location) { Location.new(5, 6) }
  subject { described_class.new(location) }

  it { should be_truthy }

  it "has a location" do
    expect(subject.location).not_to be nil
  end
end
