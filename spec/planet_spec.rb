require 'spec_helper'
require 'planet'

describe Planet do
  subject { described_class.new 4 }

  it { should be_truthy }
  it { expect(subject.dimensions).to be 4 }
end
