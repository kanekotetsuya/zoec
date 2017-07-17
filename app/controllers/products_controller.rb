class ProductsController < ApplicationController
  def index
    @product = Product.new
  end

  def show
    @product = Product.new
  end

  def create
    @product = Product.new(new_product_params)
    if @product.save
      render :show , notice: "商品を登録しました。"
    else
      flash.now[:alert] = "商品が登録できませんでした。"
      render :show
    end
  end

  def update
  end

  private
  def new_product_params
    params.require(:product).permit(:image, :name, :product_code, :product_category, :price, :count, :description)
  end
end
