class AddSmokerToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :smoker, :boolean
  end
end
