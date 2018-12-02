class Contact < ActiveRecord::Base
  define_model_callbacks :deliver
  include MailForm::Delivery

  
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

  has_and_belongs_to_many :events
  def headers
    {
      :subject => "New Client - Velveteen Ensemble",
      :to => "hans@hspalacios.com",
      :from =>  %("#{fname}" <#{email}>)
    }
  end
end