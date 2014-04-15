class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit]
  
  def index
    @people = Person.all
  end

  def new    
    @person = Person.new
  end

  def edit
  end

  def show    
  end

  def create
    @person = Person.new(params_for_person)
    if @person.save
      redirect_to person_path(@person)
    else
      render :new
    end        
  end

  
  private
  def set_person
    @person = Person.find(params[:id])
  end
  
  def params_for_person
    params.require(:person).permit!
  end
  
end
