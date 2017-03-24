class AdminMoneysController < ApplicationController

  def edit
    @money = Money.first
  end

  def update
    @money = Money.first
    @money.dollar = money_params[:dollar]
    if @money.save
      redirect_to admin_events_path
    else
      render :edit
    end
  end

  private

  def money_params
    params.require(:money).permit(:dollar)
  end

end
