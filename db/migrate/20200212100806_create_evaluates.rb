class CreateEvaluates < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluates do |t|
      t.references :user, foreign_key: true
      t.references :manga, foreign_key: true
      t.index [:user_id, :manga_id], unique: true
      t.integer :v
      t.integer :s
      t.timestamps
    end
  end
end
