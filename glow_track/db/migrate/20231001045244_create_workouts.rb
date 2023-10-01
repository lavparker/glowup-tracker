class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
        t.string :workout_name, null: false, unique: true 
        t.string :description, null: false 
        t.integer :reps, null: true
        t.integer :sets, null: true
        t.string :time, null: true 
        t.string :body_part, null: false, index: true 
        t.string :energy_level, index: true 
        t.string :weight_type, null: false, index: true 
        t.string :workout_location, null: false, index: true 
        t.string :equipment_needed, null: true, index: true 
        t.string :weight_added, null: true
        t.string :total_time, null: true, index: true 
        t.integer :user_id, null: false 

      t.timestamps
    end
  end
end
