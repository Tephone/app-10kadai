class AddContentToUser2s < ActiveRecord::Migration[5.2]
  def change
    add_column :user2s, :content, :text
  end
end
