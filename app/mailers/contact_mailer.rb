class ContactMailer < ActionMailer::Base
  default from: 'web@mykaptive.com'

  def contact_confirmation(contact)
    @contact = contact
    mail(:to => "paul@kosmyka.com", :reply_to => 'web@mykaptive.com', :subject => "Web Message")
  end

end
