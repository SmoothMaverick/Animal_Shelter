class Customer < ActiveRecord::Base
  has_many :animals
  # validates :name, presence: true
  # validates :address, presence: true
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
end
