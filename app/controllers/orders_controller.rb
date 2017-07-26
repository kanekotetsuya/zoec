class OrdersController < ApplicationController

  def index
    @cart = session[:cart]
    @price = session[:price]
    @quantity = session[:quantity]
    if user_signed_in? && @cart.present?
      @products = []
      @cart.each do |product_number|
        @products << Product.find(product_number)
      end
    end

  end

  def add_to_cart
    session[:cart] ||= []
    session[:price] ||= 0
    session[:quantity] ||= 0

    if user_signed_in?
      product = Product.find(params[:id])
      session[:cart] << product.id
      session[:price] += product.price
      session[:quantity] += 1
    end

    redirect_to action: 'index'
  end

  def create
    unless session[:quantity].zero?
      max = Order.maximum(:cart_id)

      if max.nil?
        max = 0
      end

      cart_id = ( max + 1 )
      @order = Order.new(cart_params(cart_id))

      if @order.save
        reset_session
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
