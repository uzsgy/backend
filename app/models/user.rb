require "bcrypt"

class User < ApplicationRecord
  acts_as_paranoid

  validates_presence_of :username, :email
  validates_uniqueness_of :username
  validates_confirmation_of :password

  has_secure_password
end
