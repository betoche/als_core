class CreateDocumentTypeByCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :document_type_by_countries do |t|
      t.references :country, null: false, foreign_key: true
      t.references :document_type, null: false, foreign_key: true
      t.string :name
      t.string :abbreviation
      t.boolean :local
      t.boolean :international
      t.integer :number_length

      t.timestamps
    end
  end
end