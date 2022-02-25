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

    rented = false

    rentals_for_nft = Rental.where(nft: @nft)

    rentals_for_nft.each do |rental|
      starting_date = rental.start_date
      ending_date = rental.end_date
      if @rental.start_date.between?(starting_date, ending_date) || @rental.end_date.between?(starting_date, ending_date)
        rented = true
      end
    end

    if rented
      redirect_to nft_path(@rental.nft), alert: "This Nft is already rented by another user, please try another date"
    else
      if @rental.save
        redirect_to rentals_path
      else
        render "nfts/show"
      end
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    rental.destroy

    redirect_to rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :nft_id)
  end
end
