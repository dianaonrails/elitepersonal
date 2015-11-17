class RemoveWorkInFromCandidate < ActiveRecord::Migration
  def change
  	remove_column :candidates,:work_in
  end
end
