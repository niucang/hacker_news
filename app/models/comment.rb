class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :new
  validates :content, length: { in: 3...1000 }
end
