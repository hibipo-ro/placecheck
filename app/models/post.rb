class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  mount_uploaders :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate  :picture_size

  # アップロードされた画像のサイズをバリデーションする
  def picture_size
    if picture.size > 10.megabytes
      errors.add(:picture, "should be less than 10MB")
    end
  end
end
