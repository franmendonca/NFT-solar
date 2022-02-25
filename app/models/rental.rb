class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :nft

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validate :expiration_date_cannot_be_in_the_past

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") unless end_date > start_date
  end

  def expiration_date_cannot_be_in_the_past
    errors.add(:start_date, "You can't choose a day before the current date") if start_date < Date.today
  end
end
