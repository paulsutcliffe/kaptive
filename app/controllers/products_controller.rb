class ProductsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def list
    @products = Product.all
    @last_product = Product.last
  end

  def show
    @product = Product.find_by_slug(params[:id])
    @bottles = Product.select("id, bottle, slug")
  end

  def update
    update!{product_path(@product)}

  end
  def destroy
    destroy!{products_list_path}
  end
end
