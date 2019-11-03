class ChangeRateInExchangeRate < ActiveRecord::Migration[6.0]
  def change
    change_column :exchange_rates, :rate, :decimal, :precision => 10, :scale => 8
  end
end
