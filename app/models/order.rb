class Order < ActiveRecord::Base
  attr_accessible :email, :message, :status, :product_id
  belongs_to :product

  validates  :email, :message, :presence => true
end
