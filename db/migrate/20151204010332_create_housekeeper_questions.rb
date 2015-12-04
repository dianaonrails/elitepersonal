class CreateHousekeeperQuestions < ActiveRecord::Migration
  def change
    create_table :housekeeper_questions do |t|
      t.integer :candidate_id
      t.boolean :dry_wet
      t.boolean :washing
      t.boolean :vip
      t.boolean :furniture
      t.boolean :cooking
      t.boolean :plants_animals
      t.boolean :appliances
      t.boolean :large_areas

      t.timestamps null: false
    end
  end
end
