class MoneysController < ApplicationController

  def update
    m = Money.find(params[:id])
    amount = moneys_params[:amount].to_f
    m.dollar += amount
    m.save
  end

  private

  def moneys_params
    params.require(:donate).permit(:amount)
  end
end
