# workoutscontroller
class WorkoutController < ApplicationController

  #index
  get '/workouts' do
    @workouts = Workout.all
    @workout = Workout.find_by(id: params[:id])
    erb :"/workouts/index"
  end

  #create
  get '/workouts/new' do
    erb :"/workouts/new"
  end

  #submitting workout request, redirect to new workout page
  post '/workouts' do
    # @time_domain = params[:time_domain]
    @hopper = Hopper.create(params[:hopper])
    redirect to "/workouts/#{@workout.id}/"
  end


  #show one workout
  get '/workouts/:id/' do
    @workout = Workout.find_by(id: params[:id])
    erb :"/workouts/show"
  end


  #update/edit
  get '/workouts/:id/edit' do
    @workout = Workout.find_by(id: params[:id])
    erb :"/workouts/edit"
  end

  post '/workouts/:id/' do
   @workout = Workout.find_by(id: params[:id])
   @workout.update(params[:workout])
   redirect to "/workouts/#{@workout.id}/"
  end

  # patch '/workouts/8' do
  #   "Hello World"
  # end


  #delete/destroy
  get '/workouts/:id/delete' do
    @workout = Workout.find_by(id: params[:id])
    erb :"/workouts/delete"
  end

  post '/workouts/:id/delete' do
    @workout = Workout.find_by(id: params[:id])
    workout.delete
    erb :index
  end

  delete '/workouts/what_now' do
    erb :"/workouts/what_now"
  end
end
