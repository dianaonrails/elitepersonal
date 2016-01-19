class AddYearsExperienceToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :years_experience, :string
  end
end
