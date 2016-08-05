class Task < ActiveRecord::Base
  belongs_to :user
  mount_uploader :landmark, AvatarUploader
  mount_uploader :pwd_image, AvatarUploader

  def is_pass(pwd)
    if pwd == self.password
      self.pass = true
    end
  end
end
