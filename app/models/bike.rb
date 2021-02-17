class Bike < ApplicationRecord
  has_many :customizations
  has_many :orders
end
