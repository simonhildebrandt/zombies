require 'spec_helper'
require 'planet'

describe Planet do
  subject { described_class.new 4 }

  it { should be_truthy }
  it { expect(subject.zombies).to be_kind_of(Array) }
  it { expect(subject.dimensions).to be 4 }

  context "with a zombie" do
    before do
      subject.add_zombie [2, 1]
    end
    it { expect(subject.zombies.first).to be_at(2, 1) }

    context "that's been run" do
      before do
        subject.iterate ['U', 'R', 'D']
      end

      it "will have one end up at 3, 1" do
        expect(subject.zombies).to include( be_at(3, 1) )
      end
    end
  end
end
