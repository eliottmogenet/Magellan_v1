class ChatroomsController < ApplicationController

  def show
    @users = User.all
    @messages = Message.all
    @chatroom = Chatroom.first

    @candidate = Candidate.find(params[:candidate_id])
    @reqs = Req.all
    @candidates = Candidate.all
    @message = Message.new
  end
end
