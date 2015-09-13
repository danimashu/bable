require "spec_helper"

describe Bable::Index::Base do
  it_behaves_like "an index"

  describe "#calc" do
    let(:base) { described_class.new(fake_text) }

    it "raises a not implemented method" do
      expect { base.calc }.to raise_error(NotImplementedError)
    end
  end
end
