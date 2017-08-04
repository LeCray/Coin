class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :type
      t.decimal :amount
      t.string :transaction_number
      t.references :bank_account, foreign_key: true

      t.timestamps
    end
  end
end
