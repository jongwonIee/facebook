class User < ApplicationRecord
  belongs_to :group
  has_many :posts
  has_many :comments
end
