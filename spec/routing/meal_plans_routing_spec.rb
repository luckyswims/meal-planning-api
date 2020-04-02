require "rails_helper"

RSpec.describe MealPlansController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/meal_plans").to route_to("meal_plans#index")
    end


    it "routes to #show" do
      expect(:get => "/meal_plans/1").to route_to("meal_plans#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/meal_plans").to route_to("meal_plans#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/meal_plans/1").to route_to("meal_plans#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/meal_plans/1").to route_to("meal_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/meal_plans/1").to route_to("meal_plans#destroy", :id => "1")
    end

  end
end
