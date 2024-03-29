class BandsController < ApplicationController

  def index
    render :index
  end

  def show
    @band = Band.find_by(params[:id])
    render :show 
  end

  def new
    render :new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to bands_url(@band)
    else 
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band = Band.find(params[:id])
    if @band.update_attributes(band_params)
      redirect_to band_url(@band)
    else
      flash[:errors] = @band.errors.full_messages
      render :edit
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    render :index
  end

  private 

  def band_params
    params.require(:band).permit(:name)
  end

end
