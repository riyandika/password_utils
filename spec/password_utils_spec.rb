# frozen_string_literal: true

require "password_utils"

RSpec.describe PasswordUtils do
  let(:password) { "super_secret" }
  let(:hashed_password) { PasswordUtils.password_hash(password) }

  describe ".password_hash" do
    it "generates a hash for the password" do
      expect(hashed_password).to be_a(BCrypt::Password)
    end
  end

  describe ".password_verify" do
    it "returns true for a valid password" do
      expect(PasswordUtils.password_verify(password, hashed_password)).to be true
    end

    it "returns false for an invalid password" do
      expect(PasswordUtils.password_verify("wrong_password", hashed_password)).to be false
    end
  end
end
