class AddClientRequestIdToGovernessQuestion < ActiveRecord::Migration
  def change
    add_column :governess_questions, :client_request_question_id, :integer
  end
end
