class CreateConferences < ActiveRecord::Migration[5.1]
  def change
    create_table :conferences do |t|
      t.string :wicys
      t.datetime :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
