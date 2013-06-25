class NewsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def index
    @news = News.order("created_at DESC")
  end
end
