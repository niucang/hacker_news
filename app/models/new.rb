class New < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, length: { in: 10...200 }
  validates :source, allow_nil: true, format: { with: /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&\/\/=]*)/, message: 'is invalid url' }
end
