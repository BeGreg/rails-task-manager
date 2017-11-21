class TasksController < ApplicationController
  before_action :load_task, only: [:show, :update, :edit, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    p params
    Task.create(task_params)
    redirect_to tasks_path
  end

  def update
    @task.update_attributes(task_params)
    redirect_to tasks_path
  end


  def edit
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

private

  def load_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :done)
  end
end


