
class StaticPagesController < ApplicationController

  def landing_page
    @featured_product = Product.first
  end

  def index
  end


  def thank_you
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone] 
    @message = params[:message] 
    UserMailer.contact_form(@email, @name, @phone, @message).deliver_now
  end

end
