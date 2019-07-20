class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories

  define_easy_dates do
    format_for :created_at, :format => "%A, %B %-d, %Y at%l:%M%P"
    format_for :updated_at, :format => "%A, %B %-d, %Y at%l:%M%P"
  end
end
