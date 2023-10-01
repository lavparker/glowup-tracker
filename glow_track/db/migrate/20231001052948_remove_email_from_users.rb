class RemoveEmailFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email, null: false
    add_column :users, :password, :string, null: false
  end
end
