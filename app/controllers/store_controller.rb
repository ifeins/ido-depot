class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @cart = current_cart
    @products = Product.order(:title)
  end

end
