module Bable
  module Index
    class << self
      # List the implemented readability indexes.
      #
      # @return [Array<Symbol>] list of indexes in underscored format.
      def available_indexes
        indexes = constants.select do |constant|
          c = const_get(constant)
          c.is_a?(Class) && c < Base
        end
        indexes.map { |c| c.to_s.underscore.to_sym }
      end

      def target_class(index)
        camelized_class = index.to_s.camelize

        fail NotExistingIndexError unless const_defined?(camelized_class)
        const_get(camelized_class)
      end
    end

    class NotExistingIndexError < StandardError; end
  end
end
