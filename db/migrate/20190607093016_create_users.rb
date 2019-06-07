class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.timestamps
      t.column :username, :string
      t.column :hashed_password, :string
      t.column :role, :string

    end
  end
end
