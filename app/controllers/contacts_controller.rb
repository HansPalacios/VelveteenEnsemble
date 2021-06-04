class ContactsController < ApplicationController
   def index
    @contact = Contact.new(params[:contact])
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Contact object for cleared form
        @contact = Contact.new
        format.html { render 'index'}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
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


