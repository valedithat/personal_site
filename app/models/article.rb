class Article < ApplicationRecord
  attr_accessor :category_attributes

  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories

  accepts_nested_attributes_for :categories, reject_if: :all_black
end
