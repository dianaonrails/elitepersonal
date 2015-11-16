class AddGenderToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :gender, :string
  end
end
