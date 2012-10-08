class ProductsController < ApplicationController

  def products_list
    @products = Product.find(:all)
    #@products = Product.all
  end

  def sort_products
    sort_criteria = params["product"][:sort_criteria]
    @products = Product.find(:all, :order => "#{sort_criteria}")    
  end

  def get_price
    @product = Product.find_by_name params[:product][:name]
  end

end
