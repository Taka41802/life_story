class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    Album.create(album_params)
    redirect_to '/'
  end

  def destroy
    album = album.find(params[:id])
    album.destroy
    redirect_to root_path
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    album = Album.find(params[:id])
    album.update(album_params)
    redirect_to root_path
  end

  private

  def album_params
    params.require(:album).permit(:title, :user)
  end

end
