class Meal < ActiveRecord::Base
  attr_accessible :date, :instructions, :menuurl, :name, :owner, :restaurant
  validates :name, :date, :instructions, :owner, :restaurant, :menuurl,  :presence => true
  has_many :orders, :dependent => :destroy
end
