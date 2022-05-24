class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
    def new
      @request = Request.new
      authorize @request
    end

    def create
      @request = Request.new
      @request.user = current_user
      authorize @request
      if @request.save
        redirect_to request_path(@request)
      else 
        render :new
      end
    end

    def index
      @requests = policy_scope(Request)
    end 

end
