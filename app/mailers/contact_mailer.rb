class ContactMailer < ActionMailer::Base
  default from: 'web@mykaptive.com'

  def contact_confirmation(contact)
    @contact = contact
    mail(:to => "info@nworldp.com", :reply_to => contact.email, :subject => "Web Message")
  end

end
