class DepartmentsController < ApplicationController

  before_action :get_all_departments
  before_action :get_department, except: [:index, :create, :new]

  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

  def edit
    @department.update(department_params)
    redirect_to departments_path
  end

  def show
  end

  private

    def get_department
      @department = Department.find(params[:id])
    end

    def get_all_departments
      @departments = Department.all
    end

    def department_params
      params.require(:department).permit(:name)
    end
end
