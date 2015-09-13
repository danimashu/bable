require "delegate"

module Bable
  class StatisticString < SimpleDelegator
    WORD_REGEX     = /\w+/
    SENTENCE_REGEX = /[^\s.?!:][^.?!:]*[.?!:]+/

    def words
      scan(WORD_REGEX)
    end

    def sentences
      scan(SENTENCE_REGEX)
    end

    def characters_count
      words.join.size
    end

    def words_count
      words.size
    end

    def sentences_count
      sentences.size
    end

    def average_word_length
      characters_count / words_count.to_f
    end

    def average_sentence_length
      characters_count / sentences_count.to_f
    end
  end
end
