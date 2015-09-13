require "spec_helper"

describe Bable::Index do
  before do
    module Bable; module Index; class FakeIndex < Base; end; end; end
  end

  describe ".available_indexes" do
    it "returns an array" do
      expect(described_class.available_indexes).to be_a(Array)
    end

    it "contains the existing index as a symbol" do
      expect(described_class.available_indexes).to include(:fake_index)
    end

    it "doesn't contain the excluded indexes (base)" do
      expect(described_class.available_indexes).not_to include(:base)
    end
  end

  describe ".target_class" do
    it "parses a symbol into a class when the index exists" do
      clazz = described_class.target_class(:fake_index)
      expect(clazz).to eq(described_class::FakeIndex)
    end

    it "raises an error when the index doesn't exist" do
      expect do
        described_class.target_class(:not_existing_index)
      end.to raise_error(described_class::NotExistingIndexError)
    end
  end
end
