class AddClientRequestIdToCookerQuestion < ActiveRecord::Migration
  def change
    add_column :cooker_questions, :client_request_question_id, :integer
  end
end
