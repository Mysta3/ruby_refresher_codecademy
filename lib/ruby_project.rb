# frozen_string_literal: true

require_relative `ruby_project/version`

# This Computer class representa a basic model of a computer that can create documents by a user.
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    
    @@users[username] = password
  end
end
