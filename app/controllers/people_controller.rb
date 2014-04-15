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
  
  private
  def set_person
    @person = Person.find(params[:id])
  end
end
