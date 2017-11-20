class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :userId
      t.string :name
      t.string :title
      t.integer :age

      t.timestamps
    end
  end
end
