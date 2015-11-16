class AddHeightToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :height, :string
  end
end
