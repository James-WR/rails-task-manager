class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @new_task = Task.new
  end

  def create
    @created_task = Task.new(task_params)
    @created_task.save
    redirect_to banana_path(@created_task)
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
