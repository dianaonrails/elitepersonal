class CreateLevelEducations < ActiveRecord::Migration
  def change
    create_table :level_educations do |t|
      t.string :level

      t.timestamps null: false
    end
  end
end
