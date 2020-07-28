class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.date :date
      t.integer :hours
      t.string :location
      t.string :sponsor
      t.string :format
      t.float :cost
      t.boolean :cpa
      t.boolean :cia
      t.boolean :cfe
      t.boolean :cisa
      t.string :category

      t.timestamps
    end
  end
end
