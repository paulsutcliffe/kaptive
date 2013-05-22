class AboutController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:show]
end
