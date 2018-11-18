class Contact < MailForm::Base
  
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
  
  # belongs_to :customer
  # belongs_to :event
  def headers
    {
      :subject => "New Client - Velveteen Ensemble",
      :to => "marcel@velveteenensemble.com",
      :from =>  %("#{name}" <#{email}>)
    }
  end
end