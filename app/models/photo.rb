class Photo < ActiveRecord::Base
  belongs_to :task
  mount_uploader :image, ImageUploader
end
