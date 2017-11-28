class ItemsController < ApplicationController
    before_action :authenticate_user!

    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.create(item_params)
        render json: @item
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def item_params
        params.require(:item).permit(:name, :category, :price, :description, :inventory, :seller_id)
    end


end
