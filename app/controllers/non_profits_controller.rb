class NonProfitsController < ApplicationController

  def create
    @non_profit = NonProfit.new(non_profit_params)
    @non_profit.normalize_phone_number
    byebug
    if @non_profit.save
      render :show
    end

  end

  private

  def non_profit_params
    params.require(:non_profit).permit(:why, :what_achieve, :website, :name, :contact, :contact_info)
  end
end
  
