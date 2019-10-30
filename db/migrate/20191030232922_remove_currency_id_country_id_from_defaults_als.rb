class RemoveCurrencyIdCountryIdFromDefaultsAls < ActiveRecord::Migration[6.0]
  def change
    remove_column :defaults_als, :country_id, :integer
    remove_column :defaults_als, :currency_id, :integer
  end
end
