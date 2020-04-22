class Booking < ApplicationRecord
    belongs_to :listing
    validates_presence_of :guest, :nights
end
