class CreateAssistanceQuestions < ActiveRecord::Migration
  def change
    create_table :assistance_questions do |t|
      t.integer :candidate_id
      t.boolean :dry_wet
      t.boolean :washing_ironing
      t.boolean :vip
      t.boolean :cooking
      t.boolean :systems
      t.boolean :driving
      t.boolean :pool
      t.boolean :small_repairs
      t.boolean :cares
      t.boolean :garden
      t.boolean :plants
      t.boolean :pet_grooming

      t.timestamps null: false
    end
  end
end
