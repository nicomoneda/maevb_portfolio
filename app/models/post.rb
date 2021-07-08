class Post < ApplicationRecord
  belongs_to :user
  has_many :contents
  has_many :tags, through: :post_tags

  validates :title, presence: true, length: {minimum:5, maximum:30}
end
