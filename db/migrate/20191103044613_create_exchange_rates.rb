class CreateExchangeRates < ActiveRecord::Migration[6.0]
  def change
    create_table :exchange_rates do |t|
      t.references :currency, null: false, foreign_key: true
      t.date :date
      t.decimal :rate

      t.timestamps
    end
  end
end
