class Photo < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  attachment :image
  has_many :comments 
end
