class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :Client

      t.timestamps null: false
    end
  end
end
