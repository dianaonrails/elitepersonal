class AddFunctions2ToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :functions2, :text
  end
end
