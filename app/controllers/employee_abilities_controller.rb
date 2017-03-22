class EmployeeAbilitiesController < ApplicationController
  def new
  @employee_ability = EmployeeAbility.new
  end

  def create
  @employee_ability = EmployeeAbility.new(employee_abilities_params)
  @fake_ability = @employee.fake_abilities.build(fake_abilities_params)

  if @fake_ability.save
    redirect_to @employee,  notice: "Se agrego con exito"
  else
    render :new
  end
end


protected

  def employee_abilities_params
      params.require(:fake_ability).permit!
  end
end
