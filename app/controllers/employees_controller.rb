class EmployeesController < ApplicationController

  def index
    @employees = Employee.where("employee_status = true")

    query = params[:q]
    if query
      @employees = @employees.where("name LIKE '%#{query}%'")
    end

    if request.xhr?
      render partial: "table", locals: {employees: @employees}, status: 200
    end
  end

  def show
    @employee = Employee.find(params[:id])
    @education = @employee.educations.build
    @work_exp = @employee.work_exps.build
    @ability =  @employee.abilities.build
    @dependant =  @employee.dependants.build
    @work_structures = WorkStructure.all
    @employee_ability = @employee.employee_abilities.build
  end

  def new
    @employee = Employee.new
    @employee.avatar = params[:file]
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.RAP_code = @employee.identity_number

    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.RAP_code = @employee.identity_number


    if @employee.update_attributes(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def comparacion
    @employee = Employee.find(params[:id])
  end

  def test

  end

  def suprimir
    @employee = Employee.find(params[:id])
  end

  def bonoEducativo
    Employee.TieneHijosMenores
    @employees = Employee.where(hasChildren: true)

    query = params[:q]
    if query
      @employees = @employees.where("name LIKE '%#{query}%'")
    end

    if request.xhr?
      render partial: "table", locals: {employees: @employees}, status: 200
    end

  end

  protected

    def employee_params
      params.require(:employee).permit!
    end

end
