class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :customer, class_name: "User"
end