class Booking < ApplicationRecord
    belongs_to :listing
    validates_presence_of :guest, :check_in, :check_out
end
