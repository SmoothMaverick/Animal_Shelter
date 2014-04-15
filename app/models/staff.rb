class Staff < ActiveRecord::Base
  belongs_to :shelter
  validates :name, presence:true
end
