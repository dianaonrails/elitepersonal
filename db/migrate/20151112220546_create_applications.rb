class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :state
      t.integer :candidate_id
      t.integer :vacancy_id

      t.timestamps null: false
    end
  end
end
