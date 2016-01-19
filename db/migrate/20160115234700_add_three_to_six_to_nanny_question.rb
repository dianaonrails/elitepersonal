class AddThreeToSixToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :three_to_six, :boolean
  end
end
