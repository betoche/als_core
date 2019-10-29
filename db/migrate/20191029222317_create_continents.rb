class CreateContinents < ActiveRecord::Migration[6.0]
  def change
    create_table :continents do |t|
      t.string :name
      t.integer :max_area
      t.integer :max_countries

      t.timestamps
    end
  end
end
