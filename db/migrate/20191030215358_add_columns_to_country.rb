class AddColumnsToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :area, :integer
    add_column :countries, :population, :integer
  end
end
