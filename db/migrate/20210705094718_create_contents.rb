class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :file_path
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
