class Customization < ApplicationRecord
  has_many :bikes
  has_many :customizations, through: :selections
end
