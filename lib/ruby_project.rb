# frozen_string_literal: true

require_relative `ruby_project/version`

# This Computer class representa a basic model of a computer that can create documents by a user.
class Computer
  def initialize(username, password)
    @username = username
    @password = password
  end
end
