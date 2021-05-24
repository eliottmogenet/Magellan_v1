class ReqsController < ApplicationController
      def index
        @reqs = Req.all
        @candidates = Candidate.all

      end
end
