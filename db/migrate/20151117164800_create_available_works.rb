class CreateAvailableWorks < ActiveRecord::Migration
  def change
    create_table :available_works do |t|
      t.integer :candidate_id
      t.string :description

      t.timestamps null: false
    end
  end
end
