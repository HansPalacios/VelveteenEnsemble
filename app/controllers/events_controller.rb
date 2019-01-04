class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  # GET /events/new
  def new
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    @event = Event.new
    @customer = Customer.new
    @event_date = params[:date].to_date
    @location = params[:location]
    @event_type = params[:event_type]
    @other_type = params[:other_type]
    @length = params[:length]
    @contact_id = params[:contact_id]
    @fname = params[:fname]
    @lname = params[:lname]
    @email = params[:email]
    @phone = params[:phone]
    @message = params[:message]

    if @event_type == "Other"
      @basic_type = [@fname, @other_type].join(' ') 
    else 
      @basic_type = [@fname, @event_type].join(' ')
    end
  end

  # GET /events/1/edit
  def edit
    unless admin_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to admin_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :date, :location, :event_type, :other_type, :length, :amount, :deposit, :subtotal, :deposit_paid, :total_paid, :customer_id, :fname, :lname, :email, :phone, :city, :event_id)
    end
end
