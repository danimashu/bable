shared_examples "an index" do
  let(:index) { described_class.new("text") }

  describe "#text" do
    it "stores an instance of statistic string" do
      expect(index.text).to be_a(Bable::StatisticString)
    end
  end
end
