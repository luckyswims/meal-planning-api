require 'rails_helper'

RSpec.describe "MealPlans", type: :request do
  describe "GET /meal_plans" do
    it "works! (now write some real specs)" do
      get meal_plans_path
      expect(response).to have_http_status(200)
    end
  end
end
