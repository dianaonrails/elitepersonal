class AddWeightToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :weight, :string
  end
end
