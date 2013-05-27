class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:new, :create]

  def index
    @contacts = Contact.all
    @last_contact = Contact.last
  end

  def create
    @contact = Contact.new(params[:contacto])

    create! do |success, failure|
      success.html do
        flash[:notice] = "Your message was sent."
        redirect_to new_contact_path
      end

      failure.html do
        flash[:notice] = "There was an error, message was not sent."
        render :action => "new"
      end
    end
  end
end
