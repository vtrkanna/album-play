class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :last_name, :full_name, :phone_number
      t.boolean :active
      t.timestamps null: false
    end
    add_index(:users, :full_name)
    add_index(:users, :first_name)
    add_index(:users, :phone_number, unique: true)
  end
end
