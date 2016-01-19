class AddClientRequestIdToAssistanceQuestion < ActiveRecord::Migration
  def change
    add_column :assistance_questions, :client_request_question_id, :integer
  end
end
