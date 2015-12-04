class CreateNurseQuestions < ActiveRecord::Migration
  def change
    create_table :nurse_questions do |t|
      t.integer :candidate_id
      t.boolean :older_people
      t.boolean :ambulant_patients
      t.boolean :immobile_patients
      t.boolean :measurements
      t.boolean :intramuscular_injection
      t.boolean :intravenous_injection
      t.boolean :procedures
      t.boolean :cleaning_cooking

      t.timestamps null: false
    end
  end
end
