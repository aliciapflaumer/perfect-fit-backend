# frozen_string_literal: true

class PlansController < OpenReadController
  before_action :set_plan, only: %i[update destroy]

  # GET /plans
  def index
    @plans = Plan.all
    # @plans = current_user.plans

    render json: @plans
  end

  # GET /plans/1
  def show
    # render json: @plan
    render json: Plan.find(params[:id])
  end

  # POST /plans
  def create
    # @plan = Plan.new(plan_params)
    @plan = current_user.plans.build(plan_params)

    if @plan.save
      render json: @plan, status: :created
    else
      render json: @plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plans/1
  def update
    if @plan.update(plan_params)
      render json: @plan
    else
      render json: @plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plans/1
  def destroy
    @plan.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plan
    @plan = current_user.plans.find(params[:id])
    # @plan = Plan.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def plan_params
    params.require(:plan).permit(:name, :date, :location, :difficulty)
  end
end
