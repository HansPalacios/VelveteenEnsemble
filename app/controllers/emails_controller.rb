class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :edit, :update, :destroy]

  # GET /emails
  # GET /emails.json
  def index
    @emailpage = true
    @emails = Email.all
    @email = Email.new
  end

  # GET /emails/1
  # GET /emails/1.json

  # GET /emails/new
  def new
    @email = Email.new
  end

  # GET /emails/1/edit
  def edit
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @email = Email.find(params[:id])
  end

  # POST /emails
  # POST /emails.json
  def create
    @email = Email.new(email_params)

   respond_to do |format|
      if @email.save
        format.html { redirect_to 'home#index', notice: '' }
        format.json { render :show, status: :created, location: @email }
      else
        format.html {redirect_to 'home#index', notice: 'error saving email' }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /emails/1
  # PATCH/PUT /emails/1.json
  def update
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    respond_to do |format|
      if @email.update(email_params)
        format.html { redirect_to admin_path, notice: 'Email was successfully updated.' }
      else
        format.html { render :edit, notice: 'Email was not successfully updated.' }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @email.delete
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'Email was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:name, :email)
    end
  end
