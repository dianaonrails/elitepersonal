class CreateClientResquestLanguages < ActiveRecord::Migration
  def change
    create_table :client_resquest_languages do |t|
      t.integer :client_request_id
      t.integer :language_id

      t.timestamps null: false
    end
  end
end
