class User < ApplicationRecord
  has_many :orders
  has_many :bikes, through: :orders
end
