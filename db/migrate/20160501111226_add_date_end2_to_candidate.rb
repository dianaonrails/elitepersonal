class AddDateEnd2ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :date_end2, :date
  end
end
