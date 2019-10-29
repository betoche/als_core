class FixColumnNameCurrencySimbolToCurrencySymbol < ActiveRecord::Migration[6.0]
  def change
    rename_column :countries, :currency_simbol, :currency_symbol
  end
end
