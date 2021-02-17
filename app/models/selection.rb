class Selection < ApplicationRecord
  belongs_to :customization
  belongs_to :selection, :class_name => "Customization"
end
