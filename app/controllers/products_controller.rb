class ProductsController < ApplicationController

  def index
    @campain_products = Product.where(price: 1900).limit(6)
    @recommend_products = Product.where(price: 980).limit(6)
  end

  def show
    @product = Product.new
  end

  def create
    @product = Product.new(new_product_params)
    if @product.save
      redirect_to product_path(current_user) , notice: "商品を登録しました。"
    else
      flash.now[:alert] = "商品が登録できませんでした。"
      render :show
    end
  end

  private
  def new_product_params
    params.require(:product).permit(:image, :name, :product_code, :product_category, :price, :count, :description)
  end
end
