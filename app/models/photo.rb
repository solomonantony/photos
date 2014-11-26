class Photo < ActiveRecord::Base
  belongs_to :album
  validates :caption, presence: true
  
end
