class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
    @new_candidates = Candidate.where(status: "New")
  end

  def profile
    @tech_hubs = TechHub.all
    @candidate = Candidate.find(params[:id])
    @new_candidates = Candidate.where(status: "New")

    @reqs = Req.all
    @candidates = Candidate.all
    @chatroom = Chatroom.first
  end

  def map
    @tech_hubs = TechHub.all
    @users = User.all
    @candidate = Candidate.find(params[:id])
    @new_candidates = Candidate.where(status: "New")

    @reqs = Req.all
    @candidates = Candidate.all
    @chatroom = Chatroom.first
  end

  def discover
    @candidates = Candidate.all
    @candidate = Candidate.find(params[:id])
    @candidate.status = "autre"
       @candidates.each do |candidate|
        candidate.selected = false
        candidate.save
      end
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
    redirect_to map_candidate_path(@candidate) #tab: "notification"
  end

  def new
    @tech_hubs = TechHub.all
    @req = Req.new
  end

  def save
    @candidate = Candidate.find(params[:id])
    @next_candidate = Candidate.find(params[:id].next)
    @candidate.status = "saved"
    @next_candidate.selected = true
    @candidate.selected = false
    @candidate.save
    @next_candidate.save
    redirect_to map_candidate_path(@next_candidate)
  end


  def archive
    @candidate = Candidate.find(params[:id])
    @next_candidate = Candidate.find(params[:id].next)
    @candidate.status = "archived"
    @next_candidate.selected = true
    @candidate.selected = false
    @candidate.save
    @next_candidate.save
    redirect_to map_candidate_path(@next_candidate)
  end



  #def tchat
    #@chatroom = Chatroom.last


    #@candidate = Candidate.find(params[:id])
    #@reqs = Req.all
    #@candidates = Candidate.all
    #@message = Message.new
  #end
  end
