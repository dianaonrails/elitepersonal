class AddMaritalStatusToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :marital_status, :string
  end
end
