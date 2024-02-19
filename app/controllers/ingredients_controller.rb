class IngredientsController < ApplicationController
    
 def index
  @ingredients = Ingredient.all
  
 end

 def new
    @ingredient = Ingredient.new
 end

 def create
    @ingredient = Ingredient.new(name: params[:name],category: params[:category],quantity: params[:quantity])
    if @ingredient.save
      redirect_to("/ingredients/index")
    end
  end

end
  