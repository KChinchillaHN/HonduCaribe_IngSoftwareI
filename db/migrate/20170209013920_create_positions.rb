class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :department
      t.text :requierements

      t.timestamps null: false
    end
  end
end
