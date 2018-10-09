class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :eventdate, :validate => true
  attribute :eventlocation
  attribute :type
  attribute :heardby
  attribute :length
  attribute :message, :validate => true
  attribute :nickname, :captcha  => true
  def headers
    {
      :subject => "Contact Form",
      :to => "marcel@velveteenensemble.com",
      :from =>  %("#{name}" <#{email}>)
    }
  end
end