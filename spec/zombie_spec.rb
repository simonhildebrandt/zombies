require 'spec_helper'
require 'zombie'

describe Zombie do
  let(:planet) { double }
  subject { described_class.new(planet) }

  it { should be_truthy }
  it { expect(subject.planet).not_to be nil }
end
