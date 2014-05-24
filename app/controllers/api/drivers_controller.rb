module Api
  class DriversController < ApplicationController
    respond_to :json

    def assign_driver
      respond_with Driver.assign_driver(params[:booking_id])
    end

  end
end
