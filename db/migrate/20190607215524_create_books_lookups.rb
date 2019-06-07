class CreateBooksLookups < ActiveRecord::Migration[5.2]
  def change
    create_table :books_lookups do |t|
      t.integer :book_number
      t.string :arabic_name
      t.string :english_name
    end
  end
end
