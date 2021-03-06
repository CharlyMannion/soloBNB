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

  def edit
    @listing = Listing.find(params[:id])
  end

  def create
    @current_user = User.find(session[:user_id])
    @listing = Listing.new(listing_params.merge(username: @current_user.username))

    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  def update
  @listing = Listing.find(params[:id])

  if @listing.update(listing_params)
    redirect_to @listing
  else
    render 'edit'
  end
end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    redirect_to listings_path
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :text)
  end
end
