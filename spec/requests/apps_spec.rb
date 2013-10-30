require 'spec_helper'

describe "Apps" do
  let(:test_app) { FactoryGirl.create(:app) }
  let(:current_user) { FactoryGirl.create(:user) }
  
  describe "GET /apps" do
    it "responds to the index" do
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
      expect{ get app_path 1 }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
  
  describe "GET /apps/search" do
    it "responds to the search action" do
      get search_apps_path
      response.status.should be(200)
    end
  end
end
