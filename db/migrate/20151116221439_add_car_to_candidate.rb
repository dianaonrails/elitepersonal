class AddCarToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :car, :boolean
  end
end
