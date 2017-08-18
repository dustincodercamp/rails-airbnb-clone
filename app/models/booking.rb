class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :pick_up, :drop_off, presence: true

end
