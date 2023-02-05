class Room < ApplicationRecord
    belongs_to :user
   


    mount_uploader :room_image, RoomImageUploader

end
