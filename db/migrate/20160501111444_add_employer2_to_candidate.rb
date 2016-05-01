class AddEmployer2ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :employer2, :string
  end
end
