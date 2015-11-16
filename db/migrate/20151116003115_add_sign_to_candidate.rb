class AddSignToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :sign, :string
  end
end
