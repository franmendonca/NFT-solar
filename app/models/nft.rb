class Nft < ApplicationRecord
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :wallet_address, presence: true
  validates :photo, presence: true
end
