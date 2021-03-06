class CartsController < ApplicationController
  def add
    cart = Cart.from_hash(session[:cart9527])
    cart.add_item(params[:id])
    session[:cart9527] = cart.serialize

    redirect_to products_path, notice: "商品已加入購物車!"
  end

  def destroy
    session[:cart9527] = nil
    redirect_to products_path, notice: "購物車已清空!"
  end
end
