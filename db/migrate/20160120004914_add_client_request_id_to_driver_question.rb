class AddClientRequestIdToDriverQuestion < ActiveRecord::Migration
  def change
    add_column :driver_questions, :client_request_id, :integer
  end
end
