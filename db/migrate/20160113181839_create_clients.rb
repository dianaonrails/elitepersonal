class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
