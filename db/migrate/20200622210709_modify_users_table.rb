class ModifyUsersTable < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :fullname, :string

  change_table :users do |t|
    t.rename :birtday, :birthday
    t.boolean :is_admin, default: false
    t.index :fullname
  end

  change_column :users, :birthday, :date

end

def down
  change_column :users, :birthday, :datetime

  change_table :users do |t|
    t.rename :birthday, :birtday
    t.remove :is_admin
    t.remove_index :fullname
  end

  remove_column :users, :fullname

  end
end
