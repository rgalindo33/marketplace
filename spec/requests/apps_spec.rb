require 'spec_helper'

describe "Apps" do
  let(:test_app) { FactoryGirl.create(:app) }
  
  describe "GET /apps" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get apps_path
      response.status.should be(200)
    end
  end
  describe "GET /apps/:id" do
    it "responses to the show" do 
      get app_path test_app.id
      response.status.should be(200)
    end
    it "raises an error if app not found" do
      expect{ get app_path 20 }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
