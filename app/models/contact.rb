class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,   :validate => true
  attribute :eventdate,   :validate => true
  attribute :eventlocation,   :validate => true
  attribute :type,   :validate => true
  attribute :length,   :validate => true
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true
  def headers
    {
      :subject => "Contact Form",
      :to => "hanssebastian.p@gmail.com",
      :from =>  %("#{name}" <#{email}>)
    }
  end
end