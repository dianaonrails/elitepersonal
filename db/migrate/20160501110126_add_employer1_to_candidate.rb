class AddEmployer1ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :employer1, :string
  end
end
