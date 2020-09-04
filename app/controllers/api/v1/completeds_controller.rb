class Api::V1::CompletedsController < ApplicationController
    def index
        completed = Completed.all
        render json: completed
    end

    def create
        completed = Completed.create(completed_params)
        render json: completed
    end

    def show
        completed = Completed.find(params[:id])
        render json: completed
    end

    def destroy
        completed = Completed.find(params[:id])
        completed.destroy
        render json: completed
    end

    private
    def completed_params
        params.require(:completed).permit(:text, :category)
    end


end
