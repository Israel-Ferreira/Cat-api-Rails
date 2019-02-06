class CatController < ApplicationController
    def index
        @cats = Cat.all
        render json: @cats
    end

    def create
        cat_req = cat_params
        @cat = Cat.create!(cat_req)
        render json: @cat, status: :created
    end

    def show
        render json: @cat
    end

    def destroy
        @cat.destroy
    end

    def  update
        @cat.update(cat_params)
        render json: @cat
    end

    private 

    def cat_params
        params.require(:cat).permit(:cat_breed,:weight,:life_exp,:country)
    end
end
