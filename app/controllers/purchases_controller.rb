class PurchasesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]

  def show
    @purchase = Purchase.find(params[:id])
  end
end
