class AddClientIdToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :client_id, :integer
  end
end
