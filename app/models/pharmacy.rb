class Pharmacy < ApplicationRecord
<<<<<<< HEAD
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  has_many :medicinein_pharmacies
  has_many :medicines, :through => :medicinein_pharmacies
=======
  has_many :medicines_in_pharmacies, dependent: :destroy
  has_many :medicines, through: :medicines_in_pharmacies
>>>>>>> 1e11775 (First Commit)
end
