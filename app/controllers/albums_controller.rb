class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @album = Album.new(band_id: params[:band_id])
    render :new
  end

  def create
    p @album_params
    p "----------------above me ------------------"
    @album = Album.new(album_params)
    if @album.save
      redirect_to band_albums_url(@album)
    else
      p "GET IN MY BELLY -------------------------------------"
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def update
    @album = Album.find(params[:id])

    if @albums.update_attributes(album_params)
      redirect_to album_url(@album)
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    render :destroy
  end

  private 

  def album_params
    params.require(:album).permit(:album_name, :band_id)
  end

end
