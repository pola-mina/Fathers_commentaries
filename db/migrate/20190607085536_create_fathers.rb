class CreateFathers < ActiveRecord::Migration[5.2]
  def change
    create_table :fathers do |t|

      t.timestamps
      t.column :english_name, :string
      t.column :arabic_name, :string
      t.column :arabic_wikipedia, :string
      t.column :english_wikipedia, :string

    end
  end
end
