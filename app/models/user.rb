class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services, dependent: :destroy
  has_many :bookings, foreign_key: 'customer_id', dependent: :destroy
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id', dependent: :destroy
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id', dependent: :destroy

  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}".strip
  end
end