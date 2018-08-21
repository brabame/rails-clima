class Api::V1::ReportController < ApiController
    before_action :set_location
    def index        
        @reports = @location.reports
    end 

    private
    def set_location
        location_id = params[:location_id]
        @location = Location.find(location_id)
    end
end
