class AddDateEnd1ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :date_end1, :date
  end
end
