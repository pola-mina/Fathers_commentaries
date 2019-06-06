class CreateFatherCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :father_commentaries do |t|

      t.timestamps
    end
  end
end
