class MealsController < ApplicationController

respond_to :html, :json, :xml

  def index
    @meals = Meal.all
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

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: 'Meal was successfully created.' }
        format.json { render json: @meal, status: :created, location: @meal }
      else
        format.html { render action: "new" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @meal = Meal.find(params[:id])

    respond_to do |format|
      if @meal.update_attributes(params[:meal])
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    respond_with @meal
  end

end
