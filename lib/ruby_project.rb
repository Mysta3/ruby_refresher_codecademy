# frozen_string_literal: true

require_relative `ruby_project/version`

# This Computer class representa a basic model of a computer that can create documents by a user.

class Computer
  @users = []
  def initialize(username, password)
    @username = username
    @password = password
    @files = []
    @users[username] = password
  end
end

## This is a Dog class used for exploring public vs private methods

class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public
  def bark
    puts 'Woof'
  end
end
