# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[show, seller]
  before_action :is_admin, only: %i[index]
  def show

    @meetings = Meeting.all  # Meetings where user

    @user = User.find(params[:id])
    @meetings = @user.meetings
    @products = @user.products
  end

#List of all sellers
def seller
  @sellers = User.seller
end

#List of all users
def index
    @users = User.all.order('created_at DESC')
end


def destroy
  @user = User.find(params[:id])
  @user.destroy

  if @user.destroy
    redirect_to root_url, alert: "Compte supprimé"
  end
end

private

def is_admin
  if current_user.admin?
  else
    redirect_to root_path
  end
end
end
