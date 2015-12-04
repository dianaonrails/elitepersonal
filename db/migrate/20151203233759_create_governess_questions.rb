class CreateGovernessQuestions < ActiveRecord::Migration
  def change
    create_table :governess_questions do |t|
      t.integer :candidate_id
      t.boolean :five_to_seven
      t.boolean :seven_to_ten
      t.boolean :cooking
      t.boolean :school
      t.boolean :assistant
      t.boolean :foreign_languages
      t.boolean :several_children

      t.timestamps null: false
    end
  end
end
