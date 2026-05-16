class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :customer, class_name: 'User', foreign_key: 'customer_id'

  validates :customer_id, :service_id, presence: true
  validates :status, inclusion: { in: %w(pending confirmed completed cancelled) }
  
  enum :status, { pending: 'pending', confirmed: 'confirmed', completed: 'completed', cancelled: 'cancelled' }

  scope :active, -> { where(status: ['pending', 'confirmed']) }
end