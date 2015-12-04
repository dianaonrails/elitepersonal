class CreateDriverQuestions < ActiveRecord::Migration
  def change
    create_table :driver_questions do |t|
      t.integer :candidate_id
      t.boolean :personal_driver
      t.boolean :family_driver
      t.boolean :children
      t.boolean :knowledge_road
      t.boolean :confident
      t.boolean :washing
      t.boolean :luxury_car
      t.boolean :weapons_bodyguard
      t.boolean :trips
      t.boolean :care_house

      t.timestamps null: false
    end
  end
end
