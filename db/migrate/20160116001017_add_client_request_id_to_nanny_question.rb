class AddClientRequestIdToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :client_request_id, :integer
  end
end
