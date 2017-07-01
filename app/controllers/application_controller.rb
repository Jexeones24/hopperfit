class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }


  get '/' do
    redirect to '/workouts'
  end

  #index
  get '/workouts' do
    @workouts = Workout.all
    erb :index
  end

  #create
  get '/workouts/new' do
    erb :new
  end

  #submitting workout request, redirect to new workout page
  post '/workouts' do
    @workout = Workout.create(params[:workout])
    redirect to "/workouts/#{@workout.id}/"
  end

  #show one workout
  get '/workouts/:id' do
    @workout = Workout.find_by(id: params[:id])
    erb :show
  end

  # #update/edit
  # get '/workouts/:id/edit' do
  #   @workout = Workout.find_by(id: params[:id])
  #   erb :edit
  # end
  #
  post '/workouts/:id' do
   @workout = Workout.find_by(id: params[:id])
   @workout.update(params[:workout])
   redirect to "/workouts/#{@workout.id}/"
  end

  #delete/destroy
  post '/recipes/:id/delete' do
    @workout = Workout.find_by(id: params[:id])
    workout.delete
    erb :index
  end
end
