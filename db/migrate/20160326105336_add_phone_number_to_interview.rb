class AddPhoneNumberToInterview < ActiveRecord::Migration
  def change
    add_column :interviews, :phone_number, :string
  end
end
