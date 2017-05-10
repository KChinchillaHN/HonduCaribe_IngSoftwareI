class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.references :employee, foreign_key: true
      t.datetime :date
      t.time :time_in
      t.time :time_out

      t.timestamps null: false
    end
  end
end
