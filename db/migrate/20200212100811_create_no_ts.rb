class CreateNoTs < ActiveRecord::Migration[5.0]
  def change
    create_table :no_ts do |t|
      t.text :cover
      t.string :title
      t.string :comment
      t.references :manga, foreign_key: true
      t.timestamps
    end
  end
end