class PagesController < ApplicationController
  def home
    @reqs = Req.all
    @candidates = Candidate.all

  end


end
