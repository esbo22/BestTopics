class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname, limit: 80
      t.string :lastname, limit: 80
      t.datetime :birtday

      t.timestamps
    end

    add_column :users, :email, :string, null: false, default: "", unique: true
    add_index :users, :email
  end
end
