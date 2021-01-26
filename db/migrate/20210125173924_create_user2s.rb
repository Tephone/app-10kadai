class CreateUser2s < ActiveRecord::Migration[5.2]
  def change
    create_table :user2s do |t|
      t.string :name
      t.string :email
      t.text :image
      t.string :password_digest

      t.timestamps
    end
  end
end
