class CreateClientRequests < ActiveRecord::Migration
  def change
    create_table :client_requests do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.integer :category_id
      t.text :message

      t.timestamps null: false
    end
  end
end
