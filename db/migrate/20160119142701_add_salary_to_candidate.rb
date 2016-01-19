class AddSalaryToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :salary, :string
  end
end
