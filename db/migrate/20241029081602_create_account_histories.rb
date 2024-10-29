class CreateAccountHistories < ActiveRecord::Migration[7.2]
  def change
    create_table :account_histories do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
