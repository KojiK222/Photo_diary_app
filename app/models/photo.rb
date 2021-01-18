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

  has_many :photo_hashtag_relations, dependent: :destroy
  has_many :hashtags, through: :photo_hashtag_relations

  after_create do
    post_image = PostImage.find_by(id: id)
    # hashbodyに打ち込まれたハッシュタグを検出
    hashtags = hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      # ハッシュタグは先頭の#を外した上で保存
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      post_image.hashtags << tag
    end
  end
  #更新アクション
  before_update do
    post_image = PostImage.find_by(id: id)
    post_image.hashtags.clear
    hashtags = hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      post_image.hashtags << tag
    end
  end
end
