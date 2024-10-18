# PasswordUtils

Welcome to Password Utils!
inspired by php password_hash, implemented for ruby gems

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'password_utils'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install password_utils

## Usage

```ruby
require 'password_utils'

# Example usage
password = 'super_secret'
hashed_password = PasswordUtils.password_hash(password)

# Verify the password
puts PasswordUtils.password_verify('super_secret', hashed_password)  # should return true
puts PasswordUtils.password_verify('wrong_password', hashed_password)  # should return false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/password_utils.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
