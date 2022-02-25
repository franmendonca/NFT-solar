class Nft < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :rentals

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :wallet_address, presence: true
  validates :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
