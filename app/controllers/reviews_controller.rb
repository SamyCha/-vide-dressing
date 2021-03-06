# frozen_string_literal: true

class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @review = current_user.reviews.new(review_params)
    if check_password
      @review.save
      redirect_to @review.product, alert: "Suite à notre modération, votre commentaire sera publié"
    else
      redirect_to @review.product, alert: "Le code est incorrect"
    end
  end




def rating
 @reviews = current_user.reviews
#    @reviewsnotactive = Review.where(active: nil)
 end


  private

  def review_params
    params.require(:review).permit(:comment, :star, :product_id, :user_id, :password, :active)
  end

  def check_password
  @product = Product.find(params[:product_id])
    return @review.password == @product.price*10
  end

end
