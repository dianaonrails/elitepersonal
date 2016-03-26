class AddClientIdToInterview < ActiveRecord::Migration
  def change
    add_column :interviews, :client_id, :integer
  end
end
