class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_request, only: %i[show update destroy edit]

  def index
    if params[:search][:category].present? && params[:search][:city].present?
      @requests = policy_scope(Request.search_by_city(params[:search][:city]).search_by_category(params[:search][:category]))
    elsif params[:search][:category] && !params[:search][:city].present?
      @requests = policy_scope(Request.search_by_category(params[:search][:category]))
    elsif !params[:search][:category].present? && params[:search][:city]
      @requests = policy_scope(Request.search_by_city(params[:search][:city]))
    else
      @requests = policy_scope(Request.all)
    end
  end

  def new
    @request = Request.new
    authorize @request
  end

  def show
    @requests = Request.all
    @markers = @requests.geocoded.map do |request|
      {
        lat: request.latitude,
        lng: request.longitude,
        info_window: render_to_string(partial: "info_window", locals: { request: request })
      }
    end
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
