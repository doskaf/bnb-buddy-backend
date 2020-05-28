class ListingsController < ApplicationController

    def index
        @listings = Listing.all
        render json: @listings
    end

    def create
        @listing = Listing.new(listing_params)
        if @listing.save
            render json: @listing
        else
            render json: {error: 'Listing could not be created'}
        end
    end

    def show
        @listing = Listing.find_by(id: params[:id])
        if @listing
            render json: @listing
        else
            render json: {error: 'Listing could not be found'}
        end
    end

    def destroy
        @listing = Listing.find_by(id: params[:id])
        @listing.delete
    end

    private

    def listing_params
        params.require(:listing).permit(:kind, :bedrooms, :bathrooms, :location, :price, :photos)
    end
end
