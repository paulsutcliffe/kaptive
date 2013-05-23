class ProductsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def show
    @product = Product.find_by_id(params[:id])
    @bottles = Product.select("id, bottle")
  end
end
