class MetadataController < InheritedResources::Base
  before_filter :authenticate_admin!

  def index
    redirect_to edit_metadatum_path(1)
  end
end
