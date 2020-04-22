class BookingsController < ApplicationController
    before_action :set_listing

    def index
        @bookings = @listing.bookings
        render json: @bookings
    end

    def create
        @booking = @listing.bookings.build(booking_params)

    end

    def show
        @booking = Booking.find_by(id: params[:id])
        render json: @booking
    end

    def destroy
        @booking = Booking.find_by(id: params[:id])
        @booking.delete
    end

    private

    def set_listing
        @listing = Listing.find_by(id: params[:listing_id])
    end

    def booking_params
        params.require(:booking).permit(:guest, :nights)
    end

end
