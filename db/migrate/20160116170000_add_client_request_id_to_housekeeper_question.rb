class AddClientRequestIdToHousekeeperQuestion < ActiveRecord::Migration
  def change
    add_column :housekeeper_questions, :client_request_question_id, :integer
  end
end
