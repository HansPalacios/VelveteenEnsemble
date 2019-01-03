class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @contacts = Contact.all
  end

  def show
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end


  def edit
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end


  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact].permit!)
    @contact.request = request
    respond_to do |format|
      if @contact.save && @contact.deliver!
        format.html { redirect_to new_contact_path, notice: 'Message was successfully sent' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { redirect_to new_contact_path, notice: @contact.errors  }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit( :message, :fname, :lname, :email, :phone, :eventdate, :eventlocation, :event_type, :other_type, :length, :heardby, :customer_id, :event_id)
    end
  end

# end
