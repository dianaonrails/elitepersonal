class AddInterviewToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :interview, :boolean
  end
end
