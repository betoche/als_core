class DropDefaultsAl < ActiveRecord::Migration[6.0]
  def change
    drop_table :defaults_als
  end
end
