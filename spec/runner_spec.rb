require 'spec_helper'
require 'runner'

describe Runner do
  let(:path) { File.expand_path('../examples/first.txt', __FILE__) }
  subject { described_class.new(path) }

  it { should be_truthy }
  it { expect(subject.planet.dimensions).to eq 4 }
end
