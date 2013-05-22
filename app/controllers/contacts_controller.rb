class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:new, :create]
end
