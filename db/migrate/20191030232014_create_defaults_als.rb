class CreateDefaultsAls < ActiveRecord::Migration[6.0]
  def change
    create_table :defaults_als do |t|
      t.references :country
      t.references :currency

      t.timestamps
    end
  end
end
