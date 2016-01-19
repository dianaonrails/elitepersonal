class AddLevelEducationIdToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :level_education_id, :integer
  end
end
