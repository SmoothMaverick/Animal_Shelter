class Shelter < ActiveRecord::Base
  has_many :animals
  has_many :staffs
  validates :name, presence: true, uniqueness: true
  #validates :address, presence: true, uniqueness: true
  validates :address, presence: true
end
