class CreateMaritalStatuses < ActiveRecord::Migration
  def change
    create_table :marital_statuses do |t|
      t.string :label
      t.string :title
      t.string :ru

      t.timestamps null: false
    end
  end
end
