class AboutController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:show]

  def index
    redirect_to about_path(1)
  end
end
