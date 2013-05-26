class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:new, :create]

  def index
    @contacts = Contact.all
    @last_contact = Contact.last
  end
end
