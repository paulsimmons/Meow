class OrdersController < ApplicationController
  
  def create
      @meal = Meal.find(params[:meal_id])
      @order = @meal.orders.create(params[:order])
      redirect_to meal_path(@meal)
  end
  
  def destroy
    @meal = Meal.find(params[:meal_id])
    @order = @meal.orders.find(params[:id])
    @order.destroy
    redirect_to meal_path(@meal)
  end
  
end
