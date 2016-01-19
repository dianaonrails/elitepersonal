class AddClientRequestIdToNurseQuestion < ActiveRecord::Migration
  def change
    add_column :nurse_questions, :client_request_question_id, :integer
  end
end
