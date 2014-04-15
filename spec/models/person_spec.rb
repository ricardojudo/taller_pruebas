require 'spec_helper'

describe Person do
  context 'Factories' do
    it 'Tiene una factory valida' do
      expect(FactoryGirl.build(:person)).to be_valid            
    end  
    
    it 'Has an invalid factory' do
      expect(FactoryGilr.build(:invalid_person)).to_not be_valid
    end
  end
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context 'Validations' do
    it 'Name is required' do
      @person=FactoryGirl.build(:person, name:nil)
      expect(@person).to have(1).errors_on(:name)
      
    end       
    
    it 'Name is a number' do
      @person=FactoryGirl.build(:person, height: 'Cheers!!!!')
      expect(@person).to have(1).errors_on(:height)
    end
      
    
  end        
end
