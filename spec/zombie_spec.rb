require 'spec_helper'
require 'zombie'

describe Zombie do
  let(:planet) { double }
  let(:location) { double }
  subject { described_class.new(planet, location) }

  it { should be_truthy }
  it { expect(subject.planet).not_to be nil }
  it { expect(subject.location).not_to be nil }
end
