class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_request, only: [ :show, :update, :destroy, :edit]

  def index
    if params[:search][:category].empty? && params[:search][:city].empty?
      @requests = policy_scope(Request)
    else
      @requests = policy_scope(Request.where(category: params[:search][:category], city: params[:search][:city]))
    end
  end

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

  def edit
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

  private

  def request_params
    params.require(:request).permit(:title, :description, :city, :price, :status, :photo)
  end

  def set_request
    @request = Request.find(params[:id])
    authorize @request
  end
end
