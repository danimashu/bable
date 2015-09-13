require "bable/version"
require "bable/index"
require "bable/index/base"
Dir.glob(File.join(File.dirname(__FILE__), "bable/index/*.rb")).each do |f|
  require f
end
require "active_support/core_ext/string/inflections"

module Bable
  class << self
    # Instantiate a readability index calculator.
    #
    # @param text [String] the text to analyse.
    # @param index [Symbol] the index to use (in underscore format).
    # @return [Babel::Index::Base] the instantiated subclass of
    #   `Babel::Index::Base` according to the index.
    def index(text, index: :coleman_liau)
      Index.target_class(index).new(text)
    end
  end
end
