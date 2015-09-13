module Bable
  module TestHelpers
    def fake_text
      "Fake text.\nReally?Yes!"
    end

    def stubbed_statistic
      double(characters_count:        100,
             words_count:             20,
             sentences_count:         4,
             average_word_length:     5.0,
             average_sentence_length: 25.0)
    end
  end
end
