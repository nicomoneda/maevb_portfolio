class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.date :creation_date
      t.string :description
      t.string :url_web
      t.string :category

      t.timestamps
    end
  end
end
