class Contact < MailForm::Base
	attribute :name,         :validate => true
	attribute :email,        :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message,      :validate => true
	attribute :mobile_phone, :validate => true

	def headers 
		{
		  :subject => "Contact Form",
		  :to => "boaz242@gmail.com",
		  :from => %("#{name} <#{email}>")
	    }
	end
end