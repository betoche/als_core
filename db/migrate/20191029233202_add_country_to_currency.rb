class AddCountryToCurrency < ActiveRecord::Migration[6.0]
  def change
    add_column :currencies, :country, :reference
  end
end
