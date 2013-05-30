class ProductsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def gestor
    @products = Product.all
    @last_product = Product.last
  end

  def show
    @product = Product.find_by_slug(params[:id])
    @bottles = Product.select("id, bottle, slug")
  end
end
