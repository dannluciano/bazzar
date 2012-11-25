class Product < ActiveRecord::Base

  mount_uploader :picture, PictureUploader

  attr_accessible :description, :name, :price, :picture
  has_many :orders

  validates :price, :numericality => true
  validates :description, :name, :presence =>true

end
