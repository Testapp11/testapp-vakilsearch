class CreateUserforms < ActiveRecord::Migration
  def change
    create_table :userforms do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :contact_no
      t.string :interest

      t.timestamps
    end
  end
end
