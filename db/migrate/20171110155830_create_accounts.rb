class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :restriction
      t.string :email
      t.string :eligibility

      t.timestamps
    end
  end
end
