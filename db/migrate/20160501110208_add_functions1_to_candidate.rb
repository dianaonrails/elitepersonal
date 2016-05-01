class AddFunctions1ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :functions1, :text
  end
end
