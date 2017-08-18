class Item < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  CATEGORIES = { "Dress" => 1, "Suit" => 2 }
  SIZES = { "XS" => 1, "S" => 2, "M" => 3, "L" => 4, "XL" => 5 }
end




  # def owner
  #   User.find(user_id)
  # end

  # def owner=(user)
  #   self.user_id = user.id
  # end
