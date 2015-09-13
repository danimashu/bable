require "bable/statistic_string"

module Bable
  module Index
    class Base
      attr_reader :text

      def initialize(text)
        @text = StatisticString.new(text)
      end

      # The calculation of the readability index. This method should be
      # implemented in each index class (subclass of Base). The returning value
      # could potentially means different things, depending on the index. Read
      # the documentation of each index for knowing more.
      #
      # @return [Float] the resulting calculation of the index.
      def calc
        fail NotImplementedError
      end
    end
  end
end
