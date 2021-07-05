class PostsTag < ApplicationRecord
  belongs_to :post
  belongs_to :tags
end
