class CreateWorkPlaces < ActiveRecord::Migration
  def change
    create_table :work_places do |t|
      t.string :name
      t.text :address
      t.decimal :years
      t.text :reason_stop

      t.timestamps null: false
    end
  end
end
