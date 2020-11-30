class DaysController < ApplicationController

    def index
        @days = Day.all 

        render json: {day: @days}
    end

    def show 
        @day = Day.find(params[:id])

        render json: {day: @day}
    end
end
