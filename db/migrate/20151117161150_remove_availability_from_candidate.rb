class RemoveAvailabilityFromCandidate < ActiveRecord::Migration
  def change
  	remove_column :candidates,:availability
  end
end
