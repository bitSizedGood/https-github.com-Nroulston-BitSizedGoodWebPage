class NonProfitsController < ApplicationController

  def create
    @non_profit = NonProfit.new(non_profit_params)

  

    if @non_profit.save
      render :show
    else

      flash[:errors] =  @non_profit.errors.full_messages
      redirect_to root_path
    end

  end

  private

  def non_profit_params
    params.require(:non_profit).permit(:why, :what_achieve, :website, :name, :contact, :contact_info)
  end
end
  
