class AddUserToTrainers < ActiveRecord::Migration[6.0]
  def change
    add_column :trainers, :user_id, :integer
  end
end
