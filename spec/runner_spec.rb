require 'spec_helper'
require 'runner'

describe Runner do
  let(:path) { File.expand_path('../examples/first.txt', __FILE__) }
  subject { described_class.new(path) }

  let(:planet_double) { double }

  it "creates a planet of the correct dimensions" do
    expect(Planet).to receive(:new).with(4).and_call_original
    subject
  end

  it "adds a zombie to its planet" do
    expect(Planet).to receive(:new).and_return(planet_double)
    expect(planet_double).to receive(:add_zombie).with([2, 1])
    subject
  end

  it "starts the planet iterating on start" do
    expect(Planet).to receive(:new).and_return(planet_double)
    allow(planet_double).to receive(:add_zombie)
    expect(planet_double).to receive(:iterate).with(['D', 'L', 'U', 'U', 'R', 'R'])
    subject.start
  end
end
