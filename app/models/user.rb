class User < ApplicationRecord
  has_many :articles
  has_many :projects

  # omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :lockable, :timeoutable

  define_easy_dates do
    format_for :created_at, :format => "%A, %B %-d, %Y at%l:%M%P"
    format_for :updated_at, :format => "%A, %B %-d, %Y at%l:%M%P"
  end
end
