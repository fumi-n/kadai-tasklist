class TasksController < ApplicationController

#add 2017年04月12日
  before_action :set_find_id, only: [:show, :edit, :update, :destroy]
  
#add 2017年04月09日
  def index
    @tasks = Task.all
  end

  def show
    #@tasks = Task.find(params[:id])
  end
  def new
    @tasks = Task.new
  end
  
    def create
    @tasks = Task.new(task_params)

    if @tasks.save
      flash[:success] = 'task が正常に投稿されました'
      redirect_to @tasks
    else
      flash.now[:danger] = 'task が投稿されませんでした'
      render :new
    end
  end

  def edit
    #@tasks = Task.find(params[:id])
  end

  def update
    #@tasks = Task.find(params[:id])

    if @tasks.update(task_params)
      flash[:success] = '正常に更新されました'
      redirect_to @tasks
    else
      flash.now[:danger] = '更新されませんでした'
      render :edit
    end
  end

#=begin
  def destroy
    #@tasks = Task.find(params[:id])
    @tasks.destroy

    flash[:success] = '正常に削除されました'
    redirect_to tasks_url
  end
#=end

  private

#add 
  def set_find_id
    @tasks = Task.find(params[:id])
  end
    
  # Strong Parameter
  def task_params
    params.require(:task).permit(:content)
  end
  

end
