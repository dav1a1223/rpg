class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :check_pwd]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  def check_pwd
    if @task.pass == true
      redirect_to task_path(@task)
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    @task.is_pass(task_params["check_pwd"]) unless task_params["check_pwd"].nil?
    respond_to do |format|
      if @task.update(task_params)
        if @task.pass != true
          format.html { redirect_to check_pwd_path(@task), notice: "密碼輸入錯誤，再找找看歐^^" }
        else
          format.html { redirect_to @task }
          format.json { render :show, status: :ok, location: @task }
        end
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :description, :people_num, :location, :password, :finish_way, :user_id, :landmark, :pwd_image, :check_pwd, :hint)
    end
end
