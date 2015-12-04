class CreateNannyQuestions < ActiveRecord::Migration
  def change
    create_table :nanny_questions do |t|
      t.boolean :cooking
      t.boolean :walking
      t.boolean :cleaning
      t.boolean :education
      t.boolean :trips
      t.boolean :several
      t.boolean :household_help
      t.text :education_techniques

      t.timestamps null: false
    end
  end
end
