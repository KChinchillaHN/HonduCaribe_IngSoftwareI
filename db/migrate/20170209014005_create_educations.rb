class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.string :level
      t.date :year_start
      t.date :year_end
      t.text :specification

      t.timestamps null: false
    end
  end
end
