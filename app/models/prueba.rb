class Prueba < ActiveRecord::Base
  attr_accessible :titulo, :texto, :avatar
  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
