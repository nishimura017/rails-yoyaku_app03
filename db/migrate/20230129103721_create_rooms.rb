class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :user_id
      t.string :room_image_id
      t.string :roomname
      t.integer :price
      t.string :introduction
      t.string :address

      t.timestamps
    end
  end
end
