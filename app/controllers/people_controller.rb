class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update]
  
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
  
  def update    
    if @person.update(params_for_person)
      redirect_to person_path(@person)
    else
      render :edit
    end
  end
  
  private
  def set_person
    #@person = Person.where(id:params[:id]).first
    @person = Person.find_by(id:params[:id])
  end
  
  def params_for_person
    params.require(:person).permit!
  end
  
end
