class AddTieneHijosToEmpleado < ActiveRecord::Migration
  def change
    add_column :employees, :hasChildren , :boolean

  end
end
