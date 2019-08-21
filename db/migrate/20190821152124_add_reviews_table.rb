class AddReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :review
      t.integer :rating

      t.timestamps
       t.belongs_to :destination, foreign_key: true
    end
  end
end
