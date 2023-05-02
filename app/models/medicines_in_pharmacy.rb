class MedicinesInPharmacy < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :medicine
end
