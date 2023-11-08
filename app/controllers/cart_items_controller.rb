class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
    @products = Product.all
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save
      redirect_to cart_path, notice: "商品をカートに追加しました"
    else
      render :new
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path, notice: "商品をカートから削除しました"
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:product_id, :quantity)
  end
end

