class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    task = Task.create(task_params)
    redirect_to restaurant_path(restaurant)
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
