class Api::V1::TasksController < ApplicationController
    
    def index
        tasks = Task.all
        render json: tasks
    end

    def create
        task = Task.create(task_params)
        render json: task
    end

    private
    def task_params
        params.require(:task).permit(:text, :category)
    end


end
