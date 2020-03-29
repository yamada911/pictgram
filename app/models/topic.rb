class Topic < ApplicationRecord
  validates :user_id, prisence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belong_to :user
  
  mount_uploader :image, ImageUploader
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
