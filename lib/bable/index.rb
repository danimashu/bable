module Bable
  module Index
    class << self
      EXCLUDED_INDEXES = [:base]

      def available_indexes
        indexes = constants.select { |c| const_get(c).is_a?(Class) }
        indexes.map!    { |c| c.to_s.underscore.to_sym }
        indexes.reject! { |c| EXCLUDED_INDEXES.include?(c) }
        indexes
      end

      def target_class(index)
        camelized_class = index.to_s.camelize

        if const_defined?(camelized_class)
          const_get(index.to_s.camelize)
        else
          fail NotExistingIndexError
        end
      end
    end

    class NotExistingIndexError < StandardError; end
  end
end
