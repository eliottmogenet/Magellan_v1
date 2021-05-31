class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def profile
    @candidate = Candidate.find(params[:id])

    @reqs = Req.all
    @candidates = Candidate.all
    @chatroom = Chatroom.first
  end

  def map
    @candidate = Candidate.find(params[:id])

    @reqs = Req.all
    @candidates = Candidate.all
    @chatroom = Chatroom.first
  end

  #def tchat
    #@chatroom = Chatroom.last


    #@candidate = Candidate.find(params[:id])
    #@reqs = Req.all
    #@candidates = Candidate.all
    #@message = Message.new
  #end
  end
