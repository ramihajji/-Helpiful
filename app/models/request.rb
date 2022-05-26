class Request < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_one_attached :photo
  CATEGORIES = ["Furniture", "Gardening", "Trash", "PET bottles",
                "Glass bottles", "Packages", "Moving", "Wood", "Metal"]
  CITIES = ["Munich", "Stockholm", "Berlin", "Athena",
            "Bukarest", "Falun", "Sibiu", "Korfu", "Hamburg"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :city, inclusion: { in: CITIES }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
