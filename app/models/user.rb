class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services, dependent: :destroy

  has_one_attached :avatar

  def full_name
    "#{first_name} #{last_name}".strip
  end
end