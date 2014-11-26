class Album < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  validates :name, presence: true
   
end
