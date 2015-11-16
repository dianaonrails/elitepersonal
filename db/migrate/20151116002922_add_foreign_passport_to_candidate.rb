class AddForeignPassportToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :foreign_passport, :string
  end
end
