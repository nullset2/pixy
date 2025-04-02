class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }

  belongs_to :user
  has_many :comments

  has_attached_file :image, styles: { medium: "900x900>", thumbnail: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
