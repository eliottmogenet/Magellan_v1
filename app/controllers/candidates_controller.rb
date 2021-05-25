class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def profile
    @candidate = Candidate.find(params[:id])

    @reqs = Req.all
    @candidates = Candidate.all
  end

  def map
    @candidate = Candidate.find(params[:id])

    @reqs = Req.all
    @candidates = Candidate.all
    end

  def tchat
    @chatroom = Chatroom.last

    @candidate = Candidate.find(params[:id])
    @reqs = Req.all
    @candidates = Candidate.all
  end

  end
