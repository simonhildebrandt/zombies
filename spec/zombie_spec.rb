require 'spec_helper'
require 'zombie'

describe Zombie do
  let(:location) { Location.new(5, 6) }
  subject { described_class.new(location) }

  it { should be_truthy }

  it "has a location" do
    expect(subject.location).not_to be nil
  end

  context "starting at 0,0" do
    let(:location) { Location.new(0, 0) }

    context "can move down" do
      before do
        subject.move('D')
      end

      it { should be_at(0, 1) }
      it { should_not be_at(1, 2) }
    end
  end
end
