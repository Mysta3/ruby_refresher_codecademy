# frozen_string_literal: true

require "spec_helper"

RSpec.describe RubyProject do
  it "has a version number" do
    expect(RubyProject::VERSION).not_to be nil
  end

  describe ".hello" do
    it "returns a greeting with default name" do
      expect(RubyProject.hello).to eq("Hello, World!")
    end

    it "returns a greeting with custom name" do
      expect(RubyProject.hello("Ruby")).to eq("Hello, Ruby!")
    end
  end
end