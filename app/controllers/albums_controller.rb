class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  def index
    @albums = Album.all
  end
  
  def new
    @album = Album.new
  end

  def edit
  end

  def show
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully destroyed.' }
    end
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end
    def album_params
      params[:album].permit(:title, :image, :audio)
    end
end

