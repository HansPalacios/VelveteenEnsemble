class Contact < ActiveRecord::Base
  define_model_callbacks :deliver
  include MailForm::Delivery

  # append :remote_ip, :user_agent, :session
  
  attribute :fname, :validate => true
  attribute :lname, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :eventdate, :validate => true
  attribute :eventlocation
  attribute :type
  attribute :heardby
  attribute :length
  attribute :message, :validate => true
  attribute :nickname, :captcha  => true
  attribute :customer_id
  attribute :event_id

  has_many :events
  has_many :customers, through: :events
  def headers
    {
      :subject => "New Message - Velveteen Ensemble",
      :to => "marcel@velveteenensemble.com", 
      :from =>  %("#{fname}" <#{email}>)
    }
  end
end