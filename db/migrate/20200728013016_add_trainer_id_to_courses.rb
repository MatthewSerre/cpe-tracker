class AddTrainerIdToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :trainer_id, :integer
  end
end
