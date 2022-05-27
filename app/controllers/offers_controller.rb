class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_policy_scoped, only: [:index]
  before_action :set_offer, only: [:show]
  before_action :set_request, only: %i[new create]

  def index
    @offers = current_user.offers
  end

  def show
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    authorize @offer
    @offer.user = current_user
    @offer.request = Request.find(params[:request_id])
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def set_request
    @request = Request.find(params[:request_id])
  end

  def offer_params
    params.require(:offer).permit(:price, :message)
  end
end
