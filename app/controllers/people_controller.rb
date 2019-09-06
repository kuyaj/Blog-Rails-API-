class PeopleController < ApplicationController
  def index
    render json: Person.all
  end

  def create
    @person = Person.new(cat_params)
    if @person.save
      render json: @person, status: :created
    else 
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
  end

  def show
    render json: Person.find(params[:id])
  end

  private 
  def cat_params
    params.require(:person).permit(:name, :age)
  end
end
