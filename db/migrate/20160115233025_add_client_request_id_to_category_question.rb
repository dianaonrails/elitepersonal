class AddClientRequestIdToCategoryQuestion < ActiveRecord::Migration
  def change
    add_column :category_questions, :client_request_id, :integer
  end
end
