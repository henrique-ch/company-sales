class CreateUploadFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :upload_files do |t|
      t.string :nome
      t.timestamp :upload_at
      t.integer :receita_bruta
      t.string :path

      t.timestamps
    end
  end
end
