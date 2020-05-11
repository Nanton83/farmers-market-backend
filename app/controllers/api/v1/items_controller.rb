class Api::V1::ItemsController < ApplicationController
    
    # Actions...

    before_action: set_market

    def index
        @items = Item.all
        render json: @items
    end

    def create
        @item = @market.items.new(item_params)
        if @item.save
            render json: @item
        else
            render json: {error: 'ITEM NOT CREATED'}
        end
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

    private

    def set_market
        @market = Market.find(parmas[:market_id])
    end

    def item_params
        params.require(:item).permit(:market_id, :name, :description, :price, :amount_available, :unit)
    end

end
