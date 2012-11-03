class Product < ActiveRecord::Base
  attr_accessible :brand, :description, :title, :user_id, :picture, :picture_cache, :remote_picture_url
  belongs_to :user
  mount_uploader :picture, PictureUploader
  has_reputation :votes, source: :user, aggregated_by: :sum
  has_reputation :haves, source: :user, aggregated_by: :sum
  
end
