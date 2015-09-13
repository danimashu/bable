require "bable/version"
require "bable/index/base"
Dir.glob(File.join(File.dirname(__FILE__), "bable/index/*.rb")).each do |f|
  require f
end

module Bable

end
