class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :name, presence: true
  validates :base_price, presence: true
end