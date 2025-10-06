# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

This is a Ruby project built with Bundler following standard Ruby gem conventions. The project is used for Ruby learning and practice, containing example classes like `Computer`, `Dog`, and `Account` that demonstrate various Ruby concepts including public/private methods, class initialization, and attribute accessors.

## Development Commands

### Setup
```bash
bundle install
```

### Testing
```bash
# Run all tests
rspec

# Run a single spec file
rspec spec/ruby_project_spec.rb

# Run a specific test by line number
rspec spec/ruby_project_spec.rb:11

# Run tests with coverage or other options
rspec --format documentation
```

### Linting
```bash
# Run RuboCop linter
rubocop

# Auto-fix RuboCop violations
rubocop -a

# Run RuboCop on specific files
rubocop lib/ spec/
```

### Build and Release
```bash
# Run default tasks (tests + linting)
rake

# Build gem locally
bundle exec rake build

# Install gem locally for testing
bundle exec rake install

# Release new version (updates version, creates git tag, pushes to RubyGems)
bundle exec rake release
```

### Manual Testing
```bash
# Test the command line interface
./bin/ruby_project
./bin/ruby_project "Custom Name"

# Test in IRB/Pry
bundle exec irb -r ruby_project
```

## Architecture

### Core Structure
- `lib/ruby_project.rb` - Contains practice classes (`Computer`, `Dog`) for learning Ruby concepts
- `lib/ruby_practice.rb` - Contains the `Account` class demonstrating public/private methods
- `lib/ruby_project/version.rb` - Version constant following semantic versioning
- `bin/ruby_project` - Executable CLI wrapper (currently references missing RubyProject.hello method)

### Key Patterns
- **Practice Classes**: Multiple example classes (`Computer`, `Dog`, `Account`) demonstrating different Ruby concepts
- **Public/Private Methods**: Classes show proper encapsulation with private helper methods
- **Attribute Accessors**: Examples of `attr_reader`, `attr_accessor` usage
- **Version isolation**: Version stored in separate file for clean gem management
- **Standard gem structure**: Follows Bundler gem template conventions

### Test Structure
- RSpec for testing with standard configuration
- Tests organized by module/class with descriptive contexts
- Spec helper centralizes test configuration and setup
- `.rspec` file configures output format and color

### Dependencies
- **Development**: RSpec for testing, RuboCop for linting and style
- **Runtime**: No external dependencies (stdlib only)
- **Ruby version**: Requires Ruby 2.6.0 or higher

## Important Files

- `ruby_project.gemspec` - Gem specification with metadata and dependencies
- `Rakefile` - Default task runs both tests and linting
- `Gemfile` - Bundler configuration with development dependencies
- `.rspec` - RSpec configuration for test output formatting