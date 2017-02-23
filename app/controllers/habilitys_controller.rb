class HabilitysController < ApplicationController
  def new
  @employee = Employee.find(params[:employee_id])
  @hability = @employee.habilitys.build
  end

  def create
  @employee = Employee.find(params[:employee_id])
  @hability = @employee.habilitys.build(habilitys_params)

  if @hability.save
    redirect_to @employee,  notice: "Se agrego con exito"
  else
    render :new
  end
end


protected

  def habilitys_params
      params.require(:hability).permit!
  end
end
