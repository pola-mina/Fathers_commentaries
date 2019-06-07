class CreateFatherCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :father_commentaries do |t|
      t.timestamps
      t.column :english_commentary, :text
      t.column :arabic_commentary, :text
      t.column :searchable_english_commentary, :text
      t.column :searchable_arabic_commentary, :text
      t.column :father_id, :int
    end
  end
end
