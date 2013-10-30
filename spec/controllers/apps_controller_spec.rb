require 'spec_helper'


describe AppsController do

  let(:valid_attributes) { { "name" => "MyString" } }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all apps as @apps" do
      app = App.create! valid_attributes
      get :index, {}, valid_session
      assigns(:apps).should eq([app])
    end
  end

  describe "GET show" do
    it "assigns the requested app as @app" do
      app = App.create! valid_attributes
      get :show, {:id => app.to_param}, valid_session
      assigns(:app).should eq(app)
    end
  end

end
