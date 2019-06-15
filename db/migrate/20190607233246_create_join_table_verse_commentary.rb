class CreateJoinTableVerseCommentary < ActiveRecord::Migration[5.2]
  def change
    create_join_table :verses, :father_commentaries do |t|
      t.index [:verse_id, :father_commentary_id],
      :unique => true,
      :name => 'index_on_verse_id_and_father_commentary_id'
    end
  end
end
