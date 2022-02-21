class NftsController < ApplicationController
  before_action :set_nft, only: [:show]
  def index
    @nfts = Nft.all
  end

  def show; end

  def create
    @nft = Nft.new(nft_params)

    if @nft.save
      redirect_to @nft, notice: 'Nft was successfully created.'
    else
      render :new
    end
  end

  private

  def set_nft
    @nft = Nft.find(params[:id])
  end

  def nft_params
    params.require(:nft).permit(:name, :price, :wallet_address, :description, :photo)
  end
end
