class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_policy_scoped, only: [:index]
  before_action :set_offer, only: [:show, :update, :destroy]
  before_action :set_request, only: %i[new create]


  def index
    @offers = current_user.offers
  end

  def show

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

  def update
    @offer.status = params[:offer][:status]
    @offer.save
    if @offer.save
       rejected_offers = @offer.request.offers.where(status: "Pending")
       rejected_offers.each do |offer|
        offer.status = "Rejected"
        offer.save
       end

      redirect_to profile_path
    end
  end

  def destroy
    @offer.destroy
    redirect_to profile_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def set_request
    @request = Request.find(params[:request_id])
  end

  def offer_params
    params.require(:offer).permit(:price, :message, :status)
  end
end
