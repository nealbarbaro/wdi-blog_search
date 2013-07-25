class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.references :author
      t.date :published_at
      t.text :content

      t.timestamps
    end
    add_index :articles, :author_id
  end
end
