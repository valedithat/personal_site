class Article < ApplicationRecord
  has_many :categories, through: :article_categories
  belongs_to :user
end
