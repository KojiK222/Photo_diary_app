class MessagesController < ApplicationController
    
  before_action :authenticate_user!, only: [:create]
  
  def create
    if Entry.where(user_id: current_user.id, talkroom_id: params[:message][:talkroom_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :talkroom_id).merge(user_id: current_user.id))
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    redirect_to "/talkrooms/#{@message.talkroom_id}"
  end
end
