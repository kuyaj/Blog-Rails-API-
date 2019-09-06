class CatsController < ApplicationController
  def index
    render json: Cat.all
  end

  def show
    render json: Cat.find(params[:id])
  end

  def create
    @cat = Cat.new(cat_params).blank?
    if @cat.save
      render json: @cat, status: :created
    else 
      render json: @cat.errors, status: :unprocessable_entity
    end
  end

  def update
    @cats = Cat.find(params[:id])
    if @cats.update(cat_params)
      render json: @cats
    else
      render json: @cats.errors, status: :unprocessable_entity
    end
  end

    def destroy
      @cats = Cat.find(params[:id])
      @cats.destroy
    end
    
  private 
  def cat_params
    params.require(:cat).permit(:name, :age, :favorite_food, :person_id)
  end
end
