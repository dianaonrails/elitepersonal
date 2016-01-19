class AddClientRequestIdToAvailability < ActiveRecord::Migration
  def change
    add_column :availabilities, :client_request_id, :integer
  end
end
