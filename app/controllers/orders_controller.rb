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
    (session[:cart] ||= []) << product.id
    session[:price] ||= 0
    session[:price] += product.price
    session[:quantity] ||= 0
    session[:quantity] += 1
    flash[:notice] = "#{product.name} をカートに保存しました"
    redirect_to action: 'index'

  end

  def create
    if session[:quantity].zero?
      flash[:alert] = "カートに何も入ってないよ！"
      redirect_to root_path
    else
      max = Order.maximum(:cart_id)

      if max.nil?
        max = 0
      end

      cart_id = ( max + 1 )
      @order = Order.new(cart_params(cart_id))

      if @order.save
        flash[:notice] = "購入完了！"
        reset_session
        redirect_to root_path
      else
        flash[:alert] = "購入できませんでした・・・"
        redirect_to root_path
      end
    end

  end

  def update
  end

  def show
  end


  private
  def cart_params(cart_id)
    params.permit(:user_id).merge(product_array: session[:cart], cart_id: cart_id)
  end

  def reset_session
    # cart, price, quantity を初期化
    session[:cart] = []
    session[:price] = 0
    session[:quantity] = 0
  end

end
