class RoomsController < ApplicationController
  def index
    @users = User.all
    @rooms = Room.all #postsテーブルの全データを取得する
  end

  def new
    $room = Room.new
  
  end

  def create
    $room = Room.new(params.require(:room).permit(room_params))
    if $room.save
      redirect_to room_path
    else 
      render :new
    end
  end
    
  def show
    $room = Room.find(params[:id])
    $room = current_room
  end

  def edit
    $room = Room.find(params[:id])
    if $room != current_room
        redirect_to room_path(current_room), alert: "不正なアクセスです。"
    end
  end
  private
  def room_params
    params.require(:room).permit(:roomname, :introduction, :price, :address, :room_image)
  end
end
