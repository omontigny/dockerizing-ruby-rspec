class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :author
      t.string :image_url
      t.bigint :nb_page
      t.string :editor
      t.date :parution_date
      t.string :isbn_10
      t.string :isbn_13
      t.float :original_price

      t.timestamps
    end
  end
end
