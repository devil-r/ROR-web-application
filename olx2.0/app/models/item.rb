class Item < ApplicationRecord
  belongs_to:user
  validates_presence_of:user
  has_one_attached:image

end
