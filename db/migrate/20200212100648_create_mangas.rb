class CreateMangas < ActiveRecord::Migration[5.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :image
      t.string :comment
      t.string :author
      t.timestamps
    end
  end
end
