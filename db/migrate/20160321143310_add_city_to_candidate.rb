class AddCityToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :city, :string
  end
end
