class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_request, only: [ :show, :update, :destroy, :edit]

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

    def show?
      # true
    end

    def update
      if @request.update(request_params)
        redirect_to @request
      else
        render :edit
      end
    end

    def destroy
      @request.delete
      redirect_to requests
    end

    def edit
    end

    private

    def request_params
<<<<<<< HEAD
      params.require(:request).permit(:title, :description, :address, :price, :status)
    end
=======
      params.require(:request).permit(:title, :description, :address, :price, :status, :photo)
    end 
>>>>>>> 5ad20b2f6e96a69bdef1703dc53118ae3d677ca7

    def set_request
      @request = Request.find(params[:id])
      authorize @request
    end

end
