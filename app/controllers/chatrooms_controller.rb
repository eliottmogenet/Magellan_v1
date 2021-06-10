class ChatroomsController < ApplicationController

  def show
    @tech_hubs = TechHub.all
    @users = User.all
    @candidate = Candidate.find(params[:candidate_id])
    @users = User.all
    @chatroom = @candidate.chatrooms.first
    @messages = @chatroom.messages

    @reqs = Req.all
    @candidates = Candidate.all
    @message = Message.new
  end
end
