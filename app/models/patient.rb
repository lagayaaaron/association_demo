class Patient < ApplicationRecord
  has_and_belongs_to_many :doctors
  has_many :appointments
  has_many :physicians, through: :appointments
end
