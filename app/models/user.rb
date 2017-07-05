class User < ApplicationRecord
  has_secure_password
  has_many :posts

  # Make sure a username is present
  validates :username, presence: true
  # Make sure the email address is unique
  validates :email, uniqueness: true, presence: true
end
