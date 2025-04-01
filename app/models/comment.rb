class Comment < ApplicationRecord
  validates :user_id, presence: true
  validates :post_id, presence: true

  belongs_to :user
  belongs_to :post

  has_attached_file :image, styles: { medium: "900x900>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
