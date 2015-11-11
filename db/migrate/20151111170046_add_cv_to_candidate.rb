class AddCvToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :cv, :string
  end
end
