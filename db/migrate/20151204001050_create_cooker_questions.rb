class CreateCookerQuestions < ActiveRecord::Migration
  def change
    create_table :cooker_questions do |t|
      t.integer :candidate_id
      t.boolean :family
      t.boolean :restaurants
      t.boolean :purchase
      t.boolean :menu
      t.boolean :banquets
      t.boolean :during_banquet
      t.boolean :kids
      t.boolean :diets
      t.text :knowledge_kitchen

      t.timestamps null: false
    end
  end
end
