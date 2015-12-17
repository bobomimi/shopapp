class Contact < MailForm::Base
	attribute :name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message,   :validate => true

	def headers 
		{
		  :subject => "Contact Form",
		  :to => "app44585595@heroku.com']",
		  :from => %("#{name} <#{email}>")
	    }
	end
end