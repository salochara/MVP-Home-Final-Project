class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :url
      t.boolean :status
      t.text :description
      t.string :name
      t.string :image_url
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
