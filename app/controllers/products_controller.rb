class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(product_params)
    if product.save
      render json: product
    end
  end

  private

  def product_params
    params.permit(:name, :description, :price)
  end

end
