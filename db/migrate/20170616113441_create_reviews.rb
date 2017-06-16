class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :headline, null: false
      t.string :body, null: false
      t.references :user, null: false
      t.integer :imdb_id, null: false

      t.timestamps null: false
    end
  end
end
