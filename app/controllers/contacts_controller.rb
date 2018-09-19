class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]


  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json

  def create
    @contact = Contact.new(contact_params) 
    @contact.request = request
    if @contact.save
        ContactMailer.new_request(@contact.id).deliver_later
    end
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
      private
    def contact_params 
      params.require(:contact).permit(:name, :email, :message, :phone, :eventdate, :eventlocation, :type, :length)
    end
  end
end
