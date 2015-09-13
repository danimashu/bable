require "spec_helper"

describe Bable::Index::Ari do
  it_behaves_like "an index"

  describe "#calc" do
    let(:index) { described_class.new(fake_text) }
    before { allow(index).to receive(:text).and_return(stubbed_statistic) }

    it "calculates the automated readability index" do
      expect(index.calc).to eq(4.62)
    end
  end
end
