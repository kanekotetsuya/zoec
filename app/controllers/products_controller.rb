class ProductsController < ApplicationController

  def index
    @campain_products = Product.where(price: 1900).order("RAND()").limit(6)
    @recommend_products = Product.where(price: 980).order("RAND()").limit(6)
  end

  def edit
    @product = Product.new
  end

  def create
    @product = Product.new(new_product_params)
    if @product.save
      redirect_to edit_product_path(current_user) , notice: "商品を登録しました。"
    else
      flash.now[:alert] = "商品が登録できませんでした。"
      render :edit
    end
  end

  def detail
    @product = Product.find(params[:id])
  end

  private
  def new_product_params
    params.require(:product).permit(:image, :name, :product_code, :product_category, :price, :count, :description)
  end
end
