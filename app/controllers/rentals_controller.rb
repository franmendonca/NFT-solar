class RentalsController < ApplicationController
  def index
    @rentals = Rental.where(user: current_user)
    @nfts = Nft.where(user: current_user.id)
  end

  def new
    @rental = Rental.new
  end

  def create
    @nft = Nft.find(params[:nft_id])
    @rental = Rental.new(rental_params)
    @rental.nft = @nft
    @rental.user = current_user

    if @rental.save
      redirect_to rentals_path
    else
      render "nfts/show"
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :nft_id)
  end
end
