class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.references :manga, foreign_key: true
      t.references :no_t, foreign_key:true
      t.string :title
      t.timestamps
    end
  end
end
