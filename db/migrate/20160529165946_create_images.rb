class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :label
      t.string :page

      t.timestamps null: false
    end
  end
end
