class Message < ApplicationRecord
  belongs_to :service
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :content, presence: true
  validates :sender_id, :receiver_id, :service_id, presence: true
end