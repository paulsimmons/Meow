class MealsController < ApplicationController

respond_to :html, :json, :xml

  def index
    #@meals = Meal.all
    @meals = Meal.order("date DESC")
    respond_with @meal
  end

  def show
    @meal = Meal.find(params[:id])
    respond_with @meal
  end

  def new
    @meal = Meal.new
    respond_with @meal
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(params[:meal])
    if @meal.save
      flash[:notice] = 'Meal was successfully created.'
    end
    respond_with @meal
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update_attributes(params[:meal])
      flash[:notice] = 'Meal was successfully updated.'
    end
    respond_with @meal
  end

  def destroy
    @meal = Meal.find(params[:id])
    respond_with @meal
  end

end
