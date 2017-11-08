
class StaticPagesController < ApplicationController

 def landing_page
  	#if Product.first
  		@featured_product = Product.first
  		@products = Product.limit(3)

   # else
     # @products = nil
  	#end
  end


  def index
  end

end
