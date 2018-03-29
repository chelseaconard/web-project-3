class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.string :topic
      t.string :idea

      t.timestamps
    end
  end
end
