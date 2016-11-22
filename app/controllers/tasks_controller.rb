class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new

  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:title)
  end

end



# class RestaurantsController < ApplicationController
#   before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

#   def index
#     @restaurants = Restaurant.all
#   end

#   def show
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     Restaurant.create(restaurant_params)

#     redirect_to restaurants_path
#   end

#   def edit
#   end

#   def update
#     @restaurant.update(restaurant_params)

#     redirect_to restaurant_path(@restaurant)
#   end

#   def destroy
#     @restaurant.destroy

#     redirect_to restaurants_path
#   end

#   private

#     def restaurant_params
#       params.require(:restaurant).permit(:name, :address, :rating)
#     end

#     def set_restaurant
#       @restaurant = Restaurant.find(params[:id])
#     end
# end
