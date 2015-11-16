class CreateWorkInfos < ActiveRecord::Migration
  def change
    create_table :work_infos do |t|
      t.integer :category_id
      t.text :sectors_experience
      t.string :years_experience
      t.string :current_job
      t.string :last_employer
      t.text :key_skills
      t.string :salary

      t.timestamps null: false
    end
  end
end
