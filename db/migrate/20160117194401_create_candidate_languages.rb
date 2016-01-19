class CreateCandidateLanguages < ActiveRecord::Migration
  def change
    create_table :candidate_languages do |t|
      t.integer :candidate_id
      t.integer :language_id

      t.timestamps null: false
    end
  end
end
