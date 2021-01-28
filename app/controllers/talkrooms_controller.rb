class TalkroomsController < ApplicationController
  before_action :authenticate_user!

  def create
    @talkroom = Talkroom.create
    @entry1 = Entry.create(room_id: @talkroom.id, user_id: current_user.id)
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :talkroom_id).merge(talkroom_id: @talkroom.id))
    redirect_to "/talkrooms/#{@talkroom.id}"
  end

  def show
    @talkroom = Talkoom.find(params[:id])
    if Entry.where(user_id: current_user.id,talkroom_id: @talkroom.id).present?
      @messages = @talkroom.messages
      @message = Message.new
      @entries = @talkroom.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
end
