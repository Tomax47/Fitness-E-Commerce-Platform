class DailyWorkoutsController < ApplicationController
  def new
    @daily_workout = DailyWorkout.new
    # For creating the associated module for the workout
    @daily_workout.lifts.build
  end

  def create
    @daily_workout = DailyWorkout.create(daily_workout_params)
    if @daily_workout.save
      flash[:success] = 'A new daily workout was created!'
      redirect_to root_path
    else
      flash[:fail] = 'Something went wrong!'
      render :new
    end
  end

  private

  def daily_workout_params
    params.require(:daily_workout).permit(:focus, lifts_attributes: %i[name sets reps])
  end
end
