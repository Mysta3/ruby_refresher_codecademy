# RubyProject

A Ruby project template with standard structure and development tools.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_project'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ruby_project

## Usage

```ruby
require 'ruby_project'

RubyProject.hello
# => "Hello, World!"

RubyProject.hello("Ruby")
# => "Hello, Ruby!"
```

You can also use the command line tool:

```bash
./bin/ruby_project
# => Hello, World!

./bin/ruby_project "Ruby"
# => Hello, Ruby!
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rspec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yourusername/ruby_project.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).