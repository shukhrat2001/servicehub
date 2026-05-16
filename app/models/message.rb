class Message < ApplicationRecord
  belongs_to :service
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  validates :content, presence: true
  validates :sender_id, :receiver_id, :service_id, presence: true
end