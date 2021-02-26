class Bike < ApplicationRecord
  has_many :bike_optionals
  has_many :customizations, through: :bike_optionals
  has_many :orders

  accepts_nested_attributes_for :customizations, reject_if: :all_blank


end
