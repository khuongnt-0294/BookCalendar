class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :event
      t.text :description
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.string :state
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
