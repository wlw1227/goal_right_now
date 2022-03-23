class CheckedDaysController < ApplicationController
  

  # POST /habits or /habits.json
  def index
    @habit = Habit.find(params[:id])
    @checked_day = CheckedDay.new(habit: @habit, user: current_user, day: params[:day])

    if @checked_day.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path, notice: "You've already done this today!")
    end
  end

    # Only allow a list of trusted parameters through.
    def habit_params
      params.require(:habit).permit(:description)
    end
end
