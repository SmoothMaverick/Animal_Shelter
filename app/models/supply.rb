class Supply < ActiveRecord::Base
  has_and_belongs_to_many :care_plans
  validates :name, presence: true
  validates :type, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
  # validate :validate_positive_quantity

  # def validate_positive_quantity
  #   if quantity != nil
  #     if quantity < 0
  #       self.errors.add(:quantity, "is not valid")
  #     end
  #   end
  # end

end
