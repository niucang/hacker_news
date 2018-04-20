class User < ApplicationRecord
  has_secure_password
  has_many :new
  has_many :comments

  validates :username, length: { in: 2..15 }, uniqueness: { message: 'has been used' }
  validates :password, format: { with: /\A[-a-zA-Z\d_]+\z/, message: 'can only contain letters, digits, dashes and underscores' }, length: { minimum: 10 }

end
