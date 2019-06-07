class CreateVerses < ActiveRecord::Migration[5.2]
  def change
    create_table :verses do |t|

      t.timestamps
      t.column :arabic_text, :string
      t.column :english_text, :string
      t.column :searchable_arabic, :string
      t.column :searchable_english, :string
      t.column :verse_no, :int
      t.column :chapter_no, :int
      t.column :book_no, :int
    end
  end
end
