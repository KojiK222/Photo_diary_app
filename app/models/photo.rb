class Photo < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :comments 
end
