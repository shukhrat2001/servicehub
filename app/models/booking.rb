class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :customer, class_name: 'User', foreign_key: 'customer_id'

  validates :customer_id, :service_id, presence: true
  validates :status, inclusion: { in: %w(pending confirmed completed cancelled) }, allow_nil: true
  
  before_create :set_default_status

  private

  def set_default_status
    self.status ||= 'pending'
  end
end