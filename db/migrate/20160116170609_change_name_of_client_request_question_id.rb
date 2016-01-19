class ChangeNameOfClientRequestQuestionId < ActiveRecord::Migration
  def change
  	rename_column :housekeeper_questions, :client_request_question_id, :client_request_id
  	rename_column :cooker_questions, :client_request_question_id, :client_request_id
  	rename_column :governess_questions, :client_request_question_id, :client_request_id
  	rename_column :nurse_questions, :client_request_question_id, :client_request_id
  	rename_column :assistance_questions, :client_request_question_id, :client_request_id
  end
end
