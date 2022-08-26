module Api
    module V1
        class AirlinesController < ApplicationController
            before_action :authenticate, only: %i[create update destroy]

            def index
                airlines = Airline.all

                render json: AirlineSerializer.new(airlines).serialized_json
            end
        end
    end
end