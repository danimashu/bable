[![Build Status](https://travis-ci.org/danimashu/bable.svg?branch=master)](https://travis-ci.org/danimashu/bable)

# Bable: Text readability indexes calculator

Bable is a library that will allow you calculate quantitative readability indexes of a given text. Read more about readability tests here: [](https://en.wikipedia.org/wiki/Readability_test).

Besides calculating indexes (currently available: `Automated Readability Index` and `Coleman-Liau index`), it will help you build your own index calculator, giving you the structure and the helper methods for making the process smoother.

## Installation

Add this line to your application’s Gemfile:

```ruby
gem "bable"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bable

## Usage

```ruby
require "bable"

# List of available indexes
Bable::Index.avalable_indexes # => [:ari, :coleman_liau]

# Instantiate the default index
Bable.index("text") # => #<Bable::Index::ColemanLiau @text="text">

# Instantiate a concrete index
Bable.index("text", index: :ari) # => #<Bable::Index::Ari @text="text">

# Calculate a readability index
index = Bable.index("text")
index.calc # => 7.72
```

## Implement your own index

If you want to implement your own index you just need to create a subclass of `Bable::Index::Base` and define a method `#calc` in it, where you'll calculate the actual formula. Note that instances of `Bable::Index::Base` will come with a `#text` attribute reader, which returns a decorator of `String`, the class `StatisticString` (see [lib/bable/statistic_string.rb](lib/bable/statistic_string.rb) ). You can take advantage of all those methods for implement your index.

```ruby
module Bable
  module Index
    class MyNewIndex < Base
      def calc
        # Define your formula here.
      end
    end
  end
end

# Then use it
Bable.index("text", index: :my_new_index).calc
```

## Contributing

1. Fork the repo ( http://github.com/danimashu/bable/fork ).
2. Create your feature branch `git checkout -b my-new-feature`.
3. Commit your changes `git commit -am "Add some feature"` referencing a GitHub issue.
4. Push to the branch `git push origin my-new-feature`.
5. Create a new Pull Request.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
