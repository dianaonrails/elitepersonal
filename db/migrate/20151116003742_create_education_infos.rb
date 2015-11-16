class CreateEducationInfos < ActiveRecord::Migration
  def change
    create_table :education_infos do |t|
      t.integer :candidate_id
      t.string :level
      t.text :history
      t.text :languages

      t.timestamps null: false
    end
  end
end
