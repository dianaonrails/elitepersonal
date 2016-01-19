class AddOneToThreeToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :one_to_three, :boolean
  end
end
