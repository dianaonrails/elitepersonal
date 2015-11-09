class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :address
      t.string :mobile
      t.string :email
      t.string :citizenship
      t.boolean :availability
      t.boolean :work_in
      t.boolean :start
      t.text :statment

      t.timestamps null: false
    end
  end
end
