class User < ApplicationRecord
  has_many :articles
  # omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable, :lockable, :timeoutable
end
