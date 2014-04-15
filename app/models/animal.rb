class Animal < ActiveRecord::Base
  belongs_to :care_plan
  belongs_to :shelter
  belongs_to :customer
  validates :arrival_date, presence: true
  validate :validate_dated_before_now

  def validate_dated_before_now
    if self.arrival_date != nil
      if self.arrival_date > Time.now
        self.errors.add(:arrival_date, "is not valid")
      end
    end
  end

end
