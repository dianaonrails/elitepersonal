class AddNationalityToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :nationality, :string
  end
end
