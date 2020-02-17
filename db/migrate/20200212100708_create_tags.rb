class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.references :manga, foreign_key: true
      t.string :tag, null: false
      t.timestamps
    end
  end
end
