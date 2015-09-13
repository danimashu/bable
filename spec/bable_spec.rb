require "spec_helper"

describe Bable do
  it "has a version number" do
    expect(Bable::VERSION).to be_truthy
  end

  describe ".index" do
    it "instantiate the default index if no args" do
      index = described_class.index(fake_text)
      expect(index).to be_a(Bable::Index::ColemanLiau)
    end

    it "instantiate the given index when args" do
      index = described_class.index(fake_text, index: :ari)
      expect(index).to be_a(Bable::Index::Ari)
    end
  end
end
