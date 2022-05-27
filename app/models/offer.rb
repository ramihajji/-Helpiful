class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  validates :message, length: { minimum: 16 }
end
