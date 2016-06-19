require 'spec_helper'
require 'planet'

describe Planet do
  subject { described_class.new 4 }

  it { should be_truthy }
  it { expect(subject.zombies).to be_kind_of(Array) }
  it { expect(subject.creatures).to be_kind_of(Array) }
  it { expect(subject.dimensions).to be 4 }

  context "with a zombie" do
    before do
      subject.add_zombie [2, 1]
    end
    it { expect(subject.zombies.first).to be_at(2, 1) }

    context "and a simple path" do
      before do
        subject.run_path ['U', 'R', 'D']
      end

      it "will have one end up at 3, 1" do
        expect(subject.zombies).to include( be_at(3, 1) )
      end
    end

    context "and a complex path" do
      before do
        subject.add_creature [0, 1]
        subject.add_creature [1, 2]
        subject.add_creature [3, 1]
      end

      it "will produce 2 new zombies" do
        subject.porous = false
        subject.run_path ['D', 'L', 'U', 'U', 'R', 'R']
        expect(subject.score).to eq 2
        expect(subject.zombies).to include( be_at(3, 0), be_at(2, 1), be_at(2, 0) )
      end

      it "will produce 3 new zombies" do
        subject.porous = true
        subject.run_path ['D', 'L', 'U', 'U', 'R', 'R']
        expect(subject.score).to eq 3
        expect(subject.zombies).to include( be_at(3, 0), be_at(2, 1), be_at(1, 0), be_at(0, 0) )
      end
    end
  end
end
