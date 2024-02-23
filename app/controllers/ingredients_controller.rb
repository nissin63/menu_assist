class IngredientsController < ApplicationController
    
 def index
  @ingredients = Ingredient.all
  
 end

 def new
    @ingredient = Ingredient.new
 end

def show
  @ingredient = Ingredient.find_by(id: params[:id])
end


 def create
    @ingredient = Ingredient.new(name: params[:name],category: params[:category],quantity: params[:quantity])
    if @ingredient.save
      redirect_to("/ingredients/index")
    end
  end

  def destroy
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.destroy
    redirect_to("/ingredients/index")
  end

end
  