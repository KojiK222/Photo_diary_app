class PhotoHashtagRelation < ApplicationRecord
  belongs_to :photo
  belongs_to :hashtag
  validates :post_image_id, presence: true
  validates :hashtag_id, presence: true
end
