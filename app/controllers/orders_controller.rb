class OrdersController < ApplicationController

  def index
    @cart = session[:cart]
    @price = session[:price]
    @quantity = session[:quantity]

    @products = []
    @cart.each do |product_number|
      @products << Product.find(product_number)
    end

  end

  def add_to_cart
    product = Product.find(params[:id])
    test = Product.all
    (session[:cart] ||= []) << product.id
    session[:price] ||= 0
    session[:price] += product.price
    session[:quantity] ||= 0
    session[:quantity] += 1
    flash.now[:notice] = "#{product.name} をカートに保存しました"
    binding.pry
    redirect_to action: 'index'
  end

  def create
    max = Order.maximum(:cart_id)

    if max.nil?
      max = 0
      cart_id = ( max + 1 )
    end

    @order = Order.new(cart_params)

    if @order.save
      flash.now[:notice] = "商品を保存しました。"
      render :show
    else
      flash.now[:alert] = "商品が保存できませんでした。"
      render :show
    end

  end

  def update
  end

  def show
  end


  private
  def cart_params
    params.permit(:product_id, :user_id).merge(cart_id: cart_id)
  end

  def reset_session
    # cart, price, quantity を初期化
    session[:cart] = []
    session[:price] = 0
    session[:quantity] = 0
  end

end
