class AddCurrencyCountryToDefaultsAls < ActiveRecord::Migration[6.0]
  def change
    add_column :defaults_als, :currency, :reference
    add_column :defaults_als, :country, :reference
  end
end
