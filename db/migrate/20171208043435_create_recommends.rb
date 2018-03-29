class CreateRecommends < ActiveRecord::Migration[5.1]
  def change
    create_table :recommends do |t|
      t.string :topic
      t.string :idea

      t.timestamps
    end
  end
end
