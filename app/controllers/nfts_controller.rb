class NftsController < ApplicationController
  before_action :set_nft, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @nfts = Nft.search_by_name_and_description(params[:query])
    else
      @nfts = Nft.all
    end
  end

  def show
    @rental = Rental.new
  end

  def new
    @nft = Nft.new
  end

  def create
    @nft = Nft.new(nft_params)
    @nft.user = current_user
    if @nft.save
      redirect_to @nft, notice: 'Nft was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @nft.update(nft_params)

    redirect_to rentals_path
  end

  def destroy
    @nft.destroy

    redirect_to rentals_path
  end

  private

  def set_nft
    @nft = Nft.find(params[:id])
  end

  def nft_params
    params.require(:nft).permit(:name, :price, :wallet_address, :description, :photo)
  end
end
