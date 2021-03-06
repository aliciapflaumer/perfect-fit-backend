class WorkoutsController < OpenReadController
  before_action :set_workout, only: [:update, :destroy]

  # GET /workouts
  def index

    # @workouts = Workout.all

    @workouts = current_user.workouts

    render json: @workouts
  end

  # GET /workouts/1
  def show
    # render json: @workout
    render json: Workout.find(params[:id])
  end

  # POST /workouts
  def create
    # @workout = Workout.new(workout_params)
    @workout = current_user.workouts.build(workout_params)

    if @workout.save
      render json: @workout, status: :created
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = current_user.workouts.find(params[:id])
      # @workout = Workout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:name, :duration, :repetitions, :plan_id)
    end
end
