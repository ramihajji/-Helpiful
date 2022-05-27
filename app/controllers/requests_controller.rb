class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_request, only: %i[show update destroy edit]

  def index
    @requests = policy_scope(Request.where(nil))
    @requests = policy_scope(@requests.search_by_category(params[:search][:category])) if params[:search][:category].present?
    @requests = policy_scope(@requests.search_by_city(params[:search][:city])) if params[:search][:city].present?
    @requests = policy_scope(@requests.search_by_keyword(params[:search][:keyword])) if params[:search][:keyword].present?

    @offer = Offer.new
  end

  def new
    @request = Request.new
    authorize @request
  end

  def show
    if @request.latitude != nil && @request.longitude != nil
    @markers = [{
        lat: @request.latitude,
        lng: @request.longitude,
        info_window: render_to_string(partial: "info_window", locals: { request: @request })
      }]
    end
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    authorize @request
    if @request.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @request.update(request_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    @request.destroy
    redirect_to requests
  end

  private

  def request_params
    params.require(:request).permit(:title, :description, :category, :city, :price, :status, :address, :photo)
  end

  def set_request
    @request = Request.find(params[:id])
    authorize @request
  end
end
