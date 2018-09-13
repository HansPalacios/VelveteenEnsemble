class SongsController < ApplicationController
  def index
  	@songs  = Song.all
  end

  def edit
    @song = Song.find(params[:id])
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  def upload
  	unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  def new
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @song = Song.new
  end

  def show 
  	unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
        @song = Song.find(params[:id])

  end

  # def delete
  # 	unless admin_signed_in? 
  #     flash[:notice] = "You don't have access to that page!"
  #     redirect_to root_path
  #     return
  #   end
  # end
  def create

    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end

    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
      @song = song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
      params.require(:song).permit(:title, :bio, :name)
    end
end
