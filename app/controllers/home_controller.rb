class HomeController < ApplicationController
    
  
    def index
      @random_carbohydrates = Ingredient.where(category: "主食").pluck(:name).sample
      @random_vegetable = Ingredient.where(category: "野菜").pluck(:name).sample
      @random_protein = Ingredient.where(category: "タンパク質").pluck(:name).sample
    end
    

  end
  