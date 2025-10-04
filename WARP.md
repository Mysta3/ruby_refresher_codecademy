# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

This is a Ruby gem project built with Bundler following standard Ruby gem conventions. The gem provides a simple greeting module (`RubyProject`) with both library and command-line interfaces.

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
- `lib/ruby_project.rb` - Main module entry point with public API
- `lib/ruby_project/version.rb` - Version constant following semantic versioning
- `bin/ruby_project` - Executable CLI wrapper around the library

### Key Patterns
- **Module-based API**: Main functionality exposed through `RubyProject` module class methods
- **Version isolation**: Version stored in separate file for clean gem management  
- **Dual interface**: Library can be used programmatically or via command line
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