# frozen_string_literal: true

require_relative "ruby_project/version"

module RubyProject
  class Error < StandardError; end

  # Your code goes here...
  def self.hello(name = "World")
    "Hello, #{name}!"
  end

  class Computer
    def initialize()
      
    end
  end
end