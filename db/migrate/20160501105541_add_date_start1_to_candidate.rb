class AddDateStart1ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :date_start1, :date
  end
end
