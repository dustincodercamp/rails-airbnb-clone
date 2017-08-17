class Item < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  CATEGORIES = { "Dress" => 1, "Suit" => 2 }
  SIZES = { "XS" => 1, "S" => 2, "M" => 3, "L" => 4, "XL" => 5 }
end
