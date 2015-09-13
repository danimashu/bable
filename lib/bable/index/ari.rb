module Bable
  module Index
    class Ari < Base
      def calc
        (4.71 * text.characters_count / text.words_count +
          0.5 * text.words_count / text.sentences_count - 21.43).round(2)
      end
    end
  end
end
