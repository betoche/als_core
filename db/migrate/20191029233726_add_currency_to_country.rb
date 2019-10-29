class AddCurrencyToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :currency, :reference
  end
end
