class AddContinentToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :continent, :reference
  end
end
