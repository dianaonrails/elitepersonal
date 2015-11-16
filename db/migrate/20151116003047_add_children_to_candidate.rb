class AddChildrenToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :children, :integer
  end
end
