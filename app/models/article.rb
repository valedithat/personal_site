class Article < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :article_categories
end
