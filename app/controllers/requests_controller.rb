class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_request, only: [ :show, :update, :destroy, :edit]

<<<<<<< HEAD
  def index
    @requests = policy_scope(Request)
    if params[:search][:category].empty? && params[:search][:city].empty?
=======
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
>>>>>>> a792cb1f6515c1af3747bc2d9a96b9198be4a884
      @requests = policy_scope(Request)
    else
      @requests = Request.where(category: params[:search][:category], address: params[:search][:city])
    end
  end

<<<<<<< HEAD
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
=======
    def show?
      # true
>>>>>>> a792cb1f6515c1af3747bc2d9a96b9198be4a884
    end
  end

<<<<<<< HEAD
  def show
  end
=======
    def update
      if @request.update(request_params)
        redirect_to @request
      else
        render :edit
      end
    end
>>>>>>> a792cb1f6515c1af3747bc2d9a96b9198be4a884

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

<<<<<<< HEAD
  def edit
  end

  private
=======
    private

    def request_params
<<<<<<< HEAD
      params.require(:request).permit(:title, :description, :address, :price, :status)
    end
=======
      params.require(:request).permit(:title, :description, :address, :price, :status, :photo)
    end 
>>>>>>> 5ad20b2f6e96a69bdef1703dc53118ae3d677ca7
>>>>>>> a792cb1f6515c1af3747bc2d9a96b9198be4a884

  def request_params
    params.require(:request).permit(:title, :description, :address, :price, :status)
  end

  def set_request
    @request = Request.find(params[:id])
    authorize @request
  end
end
