class Hopper < ActiveRecord::Base
  has_one :workout

  #choose workout style
  def workout_style(params[:time_domain])
    num = params[:time_domain].to_i
    @style = ""
    case num
      when 5..8 then style = "AMRAP #{num}"
      when 9..15 then style = "AMRAP #{num}"
      when 16..20 then style = "3 Rounds for Time"
      when 21..30 then style = "5 Rounds for Time"
      when 31..60 then style = "6 Rounds for Time"
      else "Please enter a reasonable time frame, you crazy person!"
    end
  end

  #choose num of movements
  def number_of_movements(style)
    if @style.include?("AMRAP")
      if @style.include?(("5".."8").to_a.join)
        movement_num = rand(1..3)
      else
        movement_num = rand(2..4)
      end
    else
      movement_num = rand(2..6)
    end
    @movement_num = movement_num
  end


  #make array of movements
  def choose_movements
    @movement_array = [MOVEMENT_LIB].sample(@movement_num)
  end


  #assign rep based on movement type
  def rep_by_movement
    @movement_array = []
    if @movement[:description].include?("lifting")
      @movement.lifting_reps
      @movement_array << @reps
    else
      @movement.non_lifting_reps
      @movement_array << @reps
    end
  end
  # call these on movement_array??
  # put altogether into an array

  def lifting_reps
    @movement.instance_eval do
      def rep
        "#{rand(3..10)} #{self}" # => "8 Snatch"
      end
    end
    @reps = self[:name].rep #movement needs name attribute, have to call on that attribute or returns entire object
  end

  def non_lifting_reps
    @movement.instance_eval do
      def rep
        "#{rand(10..50)} #{self}"
      end
    end
    @reps = self[:name].rep
  end


  def create_workout
    @workout = Workout.create(params[:hopper])
    # what do i do with @movement_array????
  end

end
