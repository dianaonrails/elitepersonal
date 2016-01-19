class AddRegimeToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :regime, :boolean
  end
end
