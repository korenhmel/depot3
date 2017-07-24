class StoreController < ApplicationController
  def index
    @products = product.order(:title)
  end
end
