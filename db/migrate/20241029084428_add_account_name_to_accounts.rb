class AddAccountNameToAccounts < ActiveRecord::Migration[7.2]
  def change
    add_column :accounts, :name, :string
  end
end
