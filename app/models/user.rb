class User < ApplicationRecord
  has_secure_password
  has_many :new
  has_many :comments
end
