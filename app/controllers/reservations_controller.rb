class ReservationsController < ApplicationController
    def new
        
    end
        
    def create
        ReservationMailer.welcome_email.deliver
        # パターンA
        # reservation_params = params.require(:reservation)\
        #     .permit(:seminar_id, :user_id, :user_name, :kana, :email)
        # @reservation = Reservation.create(reservation_params)
        # パターンB
        @reservation = Reservation.create( \
            seminar_id: params[:reservation][:seminar_id], user_id: params[:user_id],\
            user_name: params[:reservation][:user_name], kana: params[:reservation][:kana],\
            email: params[:reservation][:email])

        # @seminars = Seminar.all
        # render json: @seminars
    end

end