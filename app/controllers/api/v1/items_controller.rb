class Api::V1::ItemsController < ApplicationController
    
    # Actions...

    def index
        @items = Item.all
        render json: @items
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            render json: @item
        else
            render json: {error: 'ERROR: Item Not Created'}
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

    def item_params
        params.require(:item).permit(:mareket_id, :name, :description, :price, :amount_available, :unit)
    end

end
