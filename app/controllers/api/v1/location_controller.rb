class Api::V1::LocationController < ApiController    
    before_action :set_location, except: [:index, :create]
    def index
        @locations = Location.all
    end

    def show        
    end
    
    def create
        location_params = params.required(:location).permit(:name)
        Location.create(name:location_params[:name])
        render status: :created    
    end


    private
    def set_location
        location_id = params[:id]
        @location = Location.find(location_id)
    end
end
