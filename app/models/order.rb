class Order < ActiveRecord::Base
  belongs_to :meal
  attr_accessible :description, :owner
  validates :description, :owner, :presence => true
end
