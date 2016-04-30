class AddPasswordToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :password, :string
  end
end
