# frozen_string_literal: true

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home search contact]
  before_action :is_admin, only: %i[admindashboard]

  def home
    @starsellers = User.where(starseller: true).limit(1)

    @selection = Product.where(active: true).limit(3)
    @products = @selection.sort_by(&:created_at).reverse
  end

  def contact
  end

def admindashboard
  @user = current_user
  @users = User.all
  @sellers = User.seller
  @products = Product.all
  @onlines = Product.all.where(active: true)
  @lastuserregistered = User.all.sort_by(&:created_at).last(10)

end


private

  def is_admin
    if current_user.admin?
    else
      redirect_to root_path
    end
  end

end
