class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :nameAuthor
      t.string :picture_uid

      t.timestamps
    end
  end
end
