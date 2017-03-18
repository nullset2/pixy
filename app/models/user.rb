class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, format: { with: Devise.email_regexp }, length: { maximum: 50 }, uniqueness: true
  validates :name, presence: true, length: { maximum: 25 }

  has_many :posts
  has_many :comments
end
