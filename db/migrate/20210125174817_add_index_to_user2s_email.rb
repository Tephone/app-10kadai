class AddIndexToUser2sEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :user2s, :email, unique: true
  end
end
