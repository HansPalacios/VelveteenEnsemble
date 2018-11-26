class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]


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
  #   if @contact.save!
  #       flash.now[:error] = nil
  # redirect_to new_contact_path, notice: 'saved'
  #   else 
  #     flash.now[:error] = 'Cannot save'
  #   end 
  #   if @contact.deliver!
  # #     flash.now[:error] = nil
  # # redirect_to new_contact_path, notice: 'Message sent successfully'
  # #   else
  # #     flash.now[:error] = 'Cannot send message'
  #     render :new
  #   end
    
  end

end
