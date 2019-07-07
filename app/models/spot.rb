class Spot < ApplicationRecord
  belongs_to :city

  validates :name, :category, :description, :address, :photo_url, :city_id, presence: true
  validates :name, uniqueness: { scope: :address }
  # validates :name, uniqueness: { scope: :address,
    # message: "already exists on this address" }
end
