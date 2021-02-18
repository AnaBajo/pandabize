class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_many :purchased_customizations
  has_many :customizations, through: :purchased_customizations

  accepts_nested_attributes_for :purchased_customizations
end
