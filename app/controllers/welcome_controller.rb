class WelcomeController < ApplicationController
	 before_action :load_data, only: [:index, :brand, :category]

  def index
    @products = Product.all
  end

  def brand
    @products = Product.includes(:brands).where(brands: {id:params[:brand_id]})
    render 'index'
  end

  def category
    @products = Product.includes(:categories).where(categories: {id: params[:category_id]})
    render 'index'
  end

 # def index
  	
  #@latest_products = Product.order('created_at desc').limit(4)
   #@sale_products = Product.where(sale: true).order('created_at desc').limit(6)
  #end  



  protected

  def load_data
    @brands = Brand.order(:name).all
    @categories = Category.order(:name).all
  end
end
