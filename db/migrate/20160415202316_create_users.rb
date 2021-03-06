class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :phone, null: false
      t.string :email
      t.boolean :opt_in, null: false, default: false

      t.timestamps null: false
    end
  end
end
