class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  # def rentals
  #   @rentals = Rental.where(user: current_user)
  # end
end
