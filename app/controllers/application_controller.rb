class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

def index
  if params[:q]
    search_term = params[:q]
    @products = Product.search(search_term)
  else
    @products = Product.all
  end
end


end



  
