class Book < ApplicationRecord

  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :opinion, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
