class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :telephone

      t.timestamps
    end
  end
end
