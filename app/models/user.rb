class User < ApplicationRecord
  validates :name, presence: true,
  # 課題１
  length: { minimum: 8, maximum: 32 }
  
  # 課題２
  validates :password, presence: true, length: { minimum: 8, maximum: 32}, format: { with: VALID_PASSWORD_REGEX}
  
  # 課題３
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  # 課題４
  validates :name, presence: true, length: { maximum: 15}
  
  
  validates :email, presence: true

  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end

