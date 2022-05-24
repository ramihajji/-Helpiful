class Request < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Furniture", "Gardening", "Trash", "PET bottles",
                "Glass bottles", "Packages", "Moving", "Wood", "Metal"]
  CITIES = ["Münich", "Stockholm", "Berlin", "Aten",
            "Bukarest", "Falun", "Sibiu", "Korfu", "Hamburg"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :category, inclusion: { in: CITIES }
end
