module Bable
  module Index
    # This class is responsible of calculating the Automated Readability Index.
    # Check https://en.wikipedia.org/wiki/Automated_readability_index for
    # knowing more.
    class Ari < Base
      def calc
        (4.71 * text.characters_count / text.words_count +
          0.5 * text.words_count / text.sentences_count - 21.43).round(2)
      end
    end
  end
end
