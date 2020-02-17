class CreateReads < ActiveRecord::Migration[5.0]
  def change
    create_table :reads do |t|
      t.references :user, foreign_key: true
      t.references :story, foreign_key: true
      t.index [:user_id, :story_id], unique: true
      t.timestamps
    end
  end
end
