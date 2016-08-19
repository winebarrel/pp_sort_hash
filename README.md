# PpSortHash

Pretty print a sorted hash by key.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pp_sort_hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pp_sort_hash

## Usage

```ruby
require 'pp'

hash1 = {a: 1, c: {c1: 10, c2: 20}, b: 2}
hash2 = {b: 2, a: 1, c: {c2: 20, c1: 10}}

pp hash1
#=> {:a=>1, :c=>{:c1=>10, :c2=>20}, :b=>2}

pp hash2
#=> {:b=>2, :a=>1, :c=>{:c2=>20, :c1=>10}}

require 'pp_sort_hash'

pp hash1
#=> {:a=>1, :b=>2, :c=>{:c1=>10, :c2=>20}}

pp hash2
#=> {:a=>1, :b=>2, :c=>{:c1=>10, :c2=>20}}
```
