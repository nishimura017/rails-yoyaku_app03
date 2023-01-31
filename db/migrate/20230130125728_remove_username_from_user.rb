class RemoveUsernameFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :username, :string
    remove_column :users, :profile, :text
    remove_column :users, :profile_image_id, :string
  end
end
