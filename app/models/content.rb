class Content < ApplicationRecord
  belongs_to :post

  validates :file_path, presence: true
end
