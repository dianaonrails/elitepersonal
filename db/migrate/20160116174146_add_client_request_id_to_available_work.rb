class AddClientRequestIdToAvailableWork < ActiveRecord::Migration
  def change
    add_column :available_works, :client_request_id, :integer
  end
end
