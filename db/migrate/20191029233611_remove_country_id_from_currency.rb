class RemoveCountryIdFromCurrency < ActiveRecord::Migration[6.0]
  def change

    remove_column :currencies, :country_id, :integer
  end
end
