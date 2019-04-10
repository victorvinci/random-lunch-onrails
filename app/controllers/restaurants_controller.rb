class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurant
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurant/1
  def show
  end

  # GET /restaurant/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurant/1/edit
  def edit
  end

  # POST /restaurant
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurant/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurant/1
  def destroy
    @restaurant.destroy
    redirect_to restaurant_url, notice: 'restaurant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :website, :address, :price, :cuisine, :food_type, :photo_url)
    end
end
