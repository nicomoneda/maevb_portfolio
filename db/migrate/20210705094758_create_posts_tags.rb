class CreatePostsTags < ActiveRecord::Migration[6.1]
  def change
    create_table :posts_tags do |t|
      t.references :post, null: false, foreign_key: true
      t.references :tags, null: false, foreign_key: true

      t.timestamps
    end
  end
end
