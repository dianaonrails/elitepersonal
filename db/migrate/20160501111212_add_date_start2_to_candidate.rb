class AddDateStart2ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :date_start2, :date
  end
end
