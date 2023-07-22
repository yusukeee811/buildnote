class Post < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  has_many :post_likes,    dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_and_belongs_to_many :hashtags

  validate  :image_type
  validates :caption, length: { maximum: 50 }

  def get_post_image(*size)
    if !size.empty?
      image.variant(resize: size)
    else
      image
    end
  end

  def post_liked_by?(user)
    post_likes.exists?(user_id: user.id)
  end

  #ハッシュタグをテーブルに保存
  after_create do
    post = Post.find_by(id: self.id)
    hashtags  = self.caption.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      #ハッシュタグは先頭の'#'を外した上で保存
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      post.hashtags << tag
    end
  end

  before_update do
    post = Post.find_by(id: self.id)
    post.hashtags.clear
    hashtags = self.caption.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      post.hashtag << tag
    end
  end

  private

  def image_type
    if !image.blob
      errors.add(:image, 'をアップロードしてください')
    elsif !image.blob.content_type.in?(%('image/jpeg image/png'))
      errors.add(:image, 'はJPEGまたはPNG形式を選択してアップロードしてください')
    end
  end

end
