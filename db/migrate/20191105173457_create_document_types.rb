class CreateDocumentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :document_types do |t|
      t.string :name
      t.string :abbreviation, length: 6
      t.boolean :local, default: true
      t.boolean :international, default: false

      t.timestamps
    end
  end
end
