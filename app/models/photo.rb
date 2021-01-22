class Photo < ApplicationRecord
  belongs_to :user
  has_many :favorites

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  attachment :image
  has_many :comments 

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end

end
