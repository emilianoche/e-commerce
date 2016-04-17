class WelcomeController < ApplicationController
  def index
  @latest_products = Product.order('created_at desc').limit(4)
    @sale_products = Product.where(sale: true).order('created_at desc').limit(6)
  end  
end
