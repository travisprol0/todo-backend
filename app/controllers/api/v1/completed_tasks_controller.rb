class CompletedTasksController < ApplicationController
    def index
        completedTasks = CompletedTask.all
        render json: completedTasks
    end

    def create
        completedTasks = CompletedTask.create(task_params)
        render json: completedTasks
    end

    def show
        completedTasks = CompletedTask.find(params[:id])
        render json: completedTasks
    end

    def destroy
        completedTasks = CompletedTask.find(params[:id])
        completedTasks.destroy
        render json: completedTasks
    end

    private
    def task_params
        params.require(:task).permit(:text, :category)
    end
end
