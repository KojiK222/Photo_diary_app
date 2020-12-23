class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  validates_uniquness_of :photo_id, scope: :user_id
end
