class Room < ApplicationRecord
    belongs_to :user
    attachment :room_image # ここを追加（_idは含めない）

end
