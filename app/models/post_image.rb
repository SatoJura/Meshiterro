class PostImage < ApplicationRecord
  
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(a)
    favorites.where(user_id: a.id).exists?
  end

end
