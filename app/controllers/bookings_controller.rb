class BookingsController < ApplicationController

    def index 
      @bookings = Booking.all
    end

    def new 
        @booking = Booking.new
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def create
        @booking = Booking.new(allowed_post_params)
        if @booking.save
            redirect_to @booking, notice: 'Your flight was succesfully booked.'
        else
            render :new, status: :unprocessable_entity
        end
    end

    def allowed_post_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end


end