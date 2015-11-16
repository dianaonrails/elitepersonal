class AddPassportToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :passport, :string
  end
end
