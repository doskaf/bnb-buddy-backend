class BookingsController < ApplicationController
    before_action :set_listing

    def index
        @bookings = @listing.bookings
        render json: @bookings
    end

    def create
        @booking = @listing.bookings.build(booking_params)
        if @booking.save
            render json: @booking
        else
            render json: {error: 'Booking could not be created'}
        end
    end

    def show
        @booking = Booking.find_by(id: params[:id])
        render json: @booking
    end

    def destroy
        @booking = Booking.find_by(id: params[:id])
        @booking.destroy
        render json: @booking
    end

    private

    def set_listing
        @listing = Listing.find_by(id: params[:listing_id])
    end

    def booking_params
        params.require(:booking).permit(:guest, :check_in, :check_out)
    end

end
