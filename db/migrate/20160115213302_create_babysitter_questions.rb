class CreateBabysitterQuestions < ActiveRecord::Migration
  def change
    create_table :babysitter_questions do |t|
      t.string :question
      t.boolean :value

      t.timestamps null: false
    end
  end
end
