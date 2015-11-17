class CreateLegalWorks < ActiveRecord::Migration
  def change
    create_table :legal_works do |t|
      t.integer :candidate_id
      t.string :description

      t.timestamps null: false
    end
  end
end
