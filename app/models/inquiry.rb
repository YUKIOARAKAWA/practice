class Inquiry < ActiveRecord::Base
  # 変数
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # バリデーション
  validates :name, presence: true, length: {maximum: 50}
  validates :mail, presence: true, length: {maximum: 255},format: { with: VALID_EMAIL_REGEX }
  validates :content, presence: true
end
