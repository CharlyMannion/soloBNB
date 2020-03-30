class ListingsController < ApplicationController
  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  def destroy
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :text)
  end
end
