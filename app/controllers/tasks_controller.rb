class TasksController < ApplicationController
  # Get /tasks
  def index  
    @task = Task.new 
    @tasks = Task.all 
    respond_to do |format|
     format.html
    end
  end
  
  # POST /tasks
  def create
    @task = Task.new(params[:task]) 
    respond_to do |format|  
     if @task.save
       format.html  { redirect_to(tasks_path, :notice => "Task added") } 
     end
    end
  end 
  
end
