class Album < ActiveRecord::Base
  has_many :photos
  validates :name, :presence => true
  validates :created, :presence => true
end
