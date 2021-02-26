class Customization < ApplicationRecord
  has_many :bike_optionals
  has_many :bikes, through: :bike_optionals

  has_many :purchased_customizations
  has_many :orders, through: :purchased_customizations

  has_many :first_customization_associations, foreign_key: :first_customization_id, class_name: "Selection"
  has_many :first_customizations, through: :first_customization_associations, source: :second_customization

  has_many :second_customization_associations, foreign_key: :second_customization_id, class_name: "Selection"
  has_many :second_customizations, through: :second_customization_associations, source: :first_customization

  # accepts_nested_attributes_for :first_customization_associations
  # accepts_nested_attributes_for :second_customization_associations

  def upsells
    (first_customizations + second_customizations).flatten.uniq
  end

end
