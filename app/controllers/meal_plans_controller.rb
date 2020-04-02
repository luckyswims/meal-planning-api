class MealPlansController < ProtectedController
  before_action :set_meal_plan, only: %i[show update destroy]

  # GET /meal_plans
  def index
    @meal_plans = current_user.meal_plans.all

    render json: @meal_plans
  end

  # GET /meal_plans/1
  def show
    render json: @meal_plan
  end

  # POST /meal_plans
  def create
    @meal_plan = current_user.meal_plans.build(meal_plan_params)

    if @meal_plan.save
      render json: @meal_plan, status: :created, location: @meal_plan
    else
      render json: @meal_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meal_plans/1
  def update
    if @meal_plan.update(meal_plan_params)
      render json: @meal_plan
    else
      render json: @meal_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meal_plans/1
  def destroy
    @meal_plan.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_meal_plan
    @meal_plan = current_user.meal_plans.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def meal_plan_params
    params.require(:meal_plan).permit(:name, :meal1, :meal2, :meal3,
                                      :meal4, :meal5, :meal6, :meal7, :user_id)
  end
end
