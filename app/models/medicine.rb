class Medicine < ApplicationRecord
<<<<<<< HEAD
  has_many :medicinein_pharmacies
  has_many :pharmacies, :through => :medicinein_pharmacies
=======
  has_many :medicines_in_pharmacies, dependent: :destroy
  has_many :pharmacies, through: :medicines_in_pharmacies
>>>>>>> 1e11775 (First Commit)
end
