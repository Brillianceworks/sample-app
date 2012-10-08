class Product < ActiveRecord::Base
   attr_accessible :name, :price, :items_in_stock
   CATEGORIES = ['name', "price", "items_in_stock"]
end
