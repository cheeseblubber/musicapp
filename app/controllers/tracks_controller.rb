class TracksController < ApplicationController

  def index
    @tracks = Track.all
    render :index
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    @track = Track.new(album_id: params[:album_id])
    if @tarck.save
      redirect_to track_url(track_params)
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(track_params)
      redirect_to track_url
    else
      render :edit
    end

  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    render :destroy
  end

  private

  def track_params
    params.require[:track].permit[:track_name, :album_id]
  end

end
