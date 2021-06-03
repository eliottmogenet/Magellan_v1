class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
    @new_candidates = Candidate.where(status: "New")
  end

  def profile
    @candidate = Candidate.find(params[:id])
    @new_candidates = Candidate.where(status: "New")

    @reqs = Req.all
    @candidates = Candidate.all
    @chatroom = Chatroom.first
  end

  def map
    @candidate = Candidate.find(params[:id])
    @new_candidates = Candidate.where(status: "New")

    @reqs = Req.all
    @candidates = Candidate.all
    @chatroom = Chatroom.first
  end

  def discover
    @candidate = Candidate.find(params[:id])
    @candidate.status = "autre"
    @candidate.selected = true
    @candidate.save
    redirect_to map_candidate_path(@candidate)
  end

  def select
    @candidates = Candidate.all
      @candidates.each do |candidate|
        candidate.selected = false
        candidate.save
      end
    @candidate = Candidate.find(params[:id])
    @candidate.selected = true
    @candidate.save
    redirect_to map_candidate_path(@candidate)
  end



  #def tchat
    #@chatroom = Chatroom.last


    #@candidate = Candidate.find(params[:id])
    #@reqs = Req.all
    #@candidates = Candidate.all
    #@message = Message.new
  #end
  end
