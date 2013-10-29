require "spec_helper"

describe AppsController do
  describe "routing" do

    it "routes to #index" do
      get("/apps").should route_to("apps#index")
    end

    it "routes to #show" do
      get("/apps/1").should route_to("apps#show", :id => "1")
    end

    it "routes to #install" do
      get("/apps/1/install").should route_to("apps#install", :id => "1")
    end

    it "routes to #uninstall" do
      get("/apps/1/uninstall").should route_to("apps#uninstall", :id => "1")
    end

    it "routes to #installed" do
      get("/apps/installed").should route_to("apps#installed")
    end

  end
end
