class Request < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
=======
  has_one_attached :photo
  CATEGORIES = ["Furniture", "Gardening", "Trash", "PET bottles",
                "Glass bottles", "Packages", "Moving", "Wood", "Metal"]
  CITIES = ["Munich", "Stockholm", "Berlin", "Athena",
            "Bukarest", "Falun", "Sibiu", "Korfu", "Hamburg"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :category, inclusion: { in: CITIES }
>>>>>>> 5ad20b2f6e96a69bdef1703dc53118ae3d677ca7
end
