module Bable
  module Index
    # This class is responsible of calculating the Coleman-Liau Index. Check
    # https://en.wikipedia.org/wiki/Coleman%E2%80%93Liau_index for knowing more.
    class ColemanLiau < Base
      def calc
        (0.0588 * average_chars_per_100_words -
          0.296 * average_sentences_per_100_words - 15.8).round(2)
      end

      private

      def average_chars_per_100_words
        text.average_word_length * 100
      end

      def average_sentences_per_100_words
        text.average_word_length * 100 / text.average_sentence_length
      end
    end
  end
end
