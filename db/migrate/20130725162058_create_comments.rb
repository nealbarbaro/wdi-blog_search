class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.references :article
      t.text :content

      t.timestamps
    end
    add_index :comments, :article_id
  end
end
