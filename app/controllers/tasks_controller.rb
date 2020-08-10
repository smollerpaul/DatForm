class TasksController < ApplicationController
  def new
    @task= Task.new
  end
  def create
    @freelancer = Freelancer.find(params[:freelancer_id])

    @task = @freelancer.tasks.new(task_params)

    if @task.save
      redirect_to freelancer_path(@freelancer)  
    else
      render 'new'
    end
  end
 
  def destroy
    @freelancer = Freelancer.find(params[:freelancer_id])
    @task = @freelancer.duties.find(params[:id])
    @task.destroy
    redirect_to freelancer_path(@freelancer)
  end
 
  private
    def task_params
      params.require(:task).permit(:work_description, :customer, :income, :date)
    end

end
