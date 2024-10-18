# frozen_string_literal: true

require_relative "password_utils/version"
require "bcrypt"

# PasswordUtils provides functionality for hashing and verifying passwords using bcrypt.
# It includes methods to hash a password and verify if a given password matches the hash.
module PasswordUtils
  class Error < StandardError; end

  # Hashes the password using bcrypt
  def self.password_hash(password, cost = 12)
    BCrypt::Password.create(password, cost: cost)
  end

  # Verifies a password against a hash
  def self.password_verify(password, password_hash)
    BCrypt::Password.new(password_hash) == password
  end
end
