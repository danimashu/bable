require "delegate"

module Bable
  class StatisticString < SimpleDelegator
    WORD_REGEX     = /\w+/
    SENTENCE_REGEX = /[^\s.?!:][^.?!:]*[.?!:]+/

    # @return [Array<String>] the list of words without punctuation.
    def words
      scan(WORD_REGEX)
    end

    # @return [Array<String>] the list of sentences (end char included: .!?:).
    def sentences
      scan(SENTENCE_REGEX)
    end

    # @return [Integer] the sum of all the number of characters of the words.
    def characters_count
      words.join.size
    end

    # @return [Integer] the number of words.
    def words_count
      words.size
    end

    # @return [Integer] the number of sentences.
    def sentences_count
      sentences.size
    end

    # @return [Float] the average number of chars of a word.
    def average_word_length
      characters_count / words_count.to_f
    end

    # @return [Float] the average number of chars of a sentence.
    def average_sentence_length
      characters_count / sentences_count.to_f
    end
  end
end
