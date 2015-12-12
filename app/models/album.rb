class Album < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  has_attached_file :audio
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  validates :title, presence: true
end
