class StoreController < ApplicationController
  
   

  def index
    @set_count = set_count
    @products = Product.order(:title)
  end

    private
  
  def set_count
    
    if session[:counter].nil? 
      session[:counter] = 0
    end
     session[:counter]+=1
     
  end
end
