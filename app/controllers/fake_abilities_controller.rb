class FakeAbilitiesController < ApplicationController
  def new
  @employee = Employee.find(params[:employee_id])
  @fake_ability = @employee.fake_abilities.build
  end

  def create
  @employee = Employee.find(params[:employee_id])
  @fake_ability = @employee.fake_abilities.build(fake_abilities_params)

  if @fake_ability.save
    redirect_to @employee,  notice: "Se agrego con exito"
  else
    render :new
  end
end


protected

  def fake_abilities_params
      params.require(:fake_ability).permit!
  end
end
