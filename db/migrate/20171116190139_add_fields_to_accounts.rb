class AddFieldsToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :breakfast, :string
    add_column :accounts, :lunch, :string
    add_column :accounts, :dinner, :string
  end
end
