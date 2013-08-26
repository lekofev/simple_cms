class Avatar < ActiveRecord::Base
  attr_accessible :titulo, :texto, :avatar

  mount_uploader :avatar, AvatarUploader
  
end
