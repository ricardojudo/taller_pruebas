require 'spec_helper'

describe PeopleController do

  describe "GET 'index'" do
    it "returns http success" do
      person=FactoryGirl.create(:person)
      get :index
      expect(assigns(:people)).to eq [person]
    end
  end

  describe "GET 'new'" do
    it "returns new" do
      get :new
      expect(assigns(:person)).to be_a_new(Person)
    end
  end

  describe "GET 'edit'" do
    it "returns http sucess" do
      person=FactoryGirl.create(:person)
      get :edit, id:person.id
      expect(assigns(:person)).to eq person
    end
  end

  describe "GET 'show'" do
    it "returns http sucess" do
      person=FactoryGirl.create(:person)
      get :show, id:person.id
      expect(assigns(:person)).to eq person
    end
  end

  describe 'POST :create' do
    context 'With valid data' do
      it 'Creates a new person in db' do
        expect {
          post :create, person: FactoryGirl.attributes_for(:person)
        }.to change(Person, :count).by(1)
      end
      
    end
    context 'With invalid data' do
      it 'Does not create person db' do
        expect{
          post :create, person: FactoryGirl.attributes_for(:invalid_person)
        }.to_not change(Person, :count)
      end      
    end
  end
end
