require "bable/statistic_string"

module Bable
  module Index
    class Base
      attr_reader :text

      def initialize(text)
        @text = StatisticString.new(text)
      end

      def calc
        fail NotImplementedError
      end
    end
  end
end
