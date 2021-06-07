class ReqsController < ApplicationController
      def index
        @reqs = Req.all
        @candidates = Candidate.all
      end

      def new
        @users = User.all
        @reqs = Req.all
        @tech_hubs = TechHub.all
        @companies = Company.all
      end



end
