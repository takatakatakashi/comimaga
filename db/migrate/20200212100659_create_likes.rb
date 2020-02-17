class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :manga, foreign_key: true
      t.index [:user_id, :manga_id], unique: true
      t.timestamps
    end
  end
end
