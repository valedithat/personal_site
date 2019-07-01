class User < ApplicationRecord
  has_many :articles

  # omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :lockable, :timeoutable
end
