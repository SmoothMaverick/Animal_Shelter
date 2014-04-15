class CarePlan < ActiveRecord::Base
  has_and_belongs_to_many :supplies
  has_many :animals
  validates :name, presence: true, uniqueness: true
end
