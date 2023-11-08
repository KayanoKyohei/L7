class ProductsController < ApplicationController
  def index
    @products = Product.all
    product_params
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "商品が登録されました"
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "商品が削除されました"
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
