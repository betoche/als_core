class AddMurrencySimbolToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :currency_simbol, :string
    add_column :countries, :currency_code, :string
    add_column :countries, :currency_name, :string
  end
end
