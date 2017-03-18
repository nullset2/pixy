class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true

  belongs_to :user
  has_many :comments

  has_attached_file :image, styles: { medium: "600x600>", thumbnail: "100x100>" }
end
