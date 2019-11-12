class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :user1, foreign_key: {to_table: :users}, index: true
      t.references :user2, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
