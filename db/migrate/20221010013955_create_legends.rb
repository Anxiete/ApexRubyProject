class CreateLegends < ActiveRecord::Migration[7.0]
  def change
    create_table :legends do |t|
      t.string :name
      t.string :title
      t.text :quote
      t.string :description
      t.string :passive
      t.string :tactical
      t.string :ultimate
      t.string :img
      t.string :image_url
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
