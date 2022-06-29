class StrategiesController < ApplicationController
  def create
    strategy = Strategy.create! params.require(:message).permit(:title, :content)
    redirect_to strategy
  end

  def new
  end
end
