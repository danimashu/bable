require "spec_helper"

describe Bable::StatisticString do
  let(:string) { Bable::StatisticString.new(fake_text) }

  describe "#words" do
    it "splits the text returning a list of words" do
      expect(string.words).to eq(%w(Fake text Really Yes))
    end
  end

  describe "#sentences" do
    it "splits the text returning a list of sentences" do
      expect(string.sentences).to eq(["Fake text.", "Really?", "Yes!"])
    end
  end

  describe "#characters_count" do
    it "counts the number of word's characters" do
      expect(string.characters_count).to eq(17)
    end
  end

  describe "#words_count" do
    it "counts the number of words" do
      expect(string.words_count).to eq(4)
    end
  end

  describe "#senteces_count" do
    it "counts the number of sentences" do
      expect(string.sentences_count).to eq(3)
    end
  end

  describe "#average_word_length" do
    it "calculates the average word's chars length" do
      expect(string.average_word_length).to eq(4.25)
    end
  end

  describe "#average_sentence_length" do
    it "calculates the average sentence's chars length" do
      expect(string.average_sentence_length).to eq(17 / 3.0)
    end
  end
end
