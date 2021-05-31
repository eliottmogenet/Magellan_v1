class MessagesController < ApplicationController

  def create
    @candidate = Candidate.find(params[:candidate_id])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom_id = @chatroom.id
    @message.user_id = User.first.id
    if @message.save
      redirect_to candidate_chatroom_path(@candidate, @chatroom, anchor: "message-#{@message.id}")
    else
      p "fail"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
