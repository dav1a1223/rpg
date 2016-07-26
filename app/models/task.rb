class Task < ActiveRecord::Base
  belongs_to :user
  mount_uploader :landmark, AvatarUploader
  mount_uploader :pwd_image, AvatarUploader

end
