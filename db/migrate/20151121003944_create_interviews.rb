class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.integer :client_request_id
      t.integer :candidate_id
      t.date :interview_date
      t.string :address
      t.string :contact
      t.text :comments

      t.timestamps null: false
    end
  end
end
