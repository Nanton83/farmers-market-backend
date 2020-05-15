class Api::V1::MarketsController < ApplicationController

    # Actions...

    def index
        @markets = Market.all
        render json: @markets
    end

    def create
        # binding.pry
        @market = Market.new(market_params)
        if @market.save
            render json: @market
        else
            render json: {error: 'ERROR: Market Not Created'}
        end
    end

    def show
        @market = Market.find(params[:id])
        render json: @market
    end

    def destroy
        @market = Market.find(params[:id])
        @market.destroy
    end

    private

    def market_params
        params.require(:market).permit(:name, :location, :is_open)
    end


end
