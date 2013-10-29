class AppsController < ApplicationController
  before_action :set_app, only: [:show, :install, :uninstall]

  def index
    @apps = App.all.order("RANDOM()")
  end

  # 
  # list all installed apps
  # 
  def installed
    @apps = current_user.apps
    render 'index'
  end

  # 
  # show specific app
  # 
  def show
  end

  # 
  # Performs an app installation on the current user
  # 
  def install
    sleep 1 # make it wait a bit 
    current_user.apps << @app rescue nil

    respond_to do |format|
      format.html { redirect_to apps_url }
      format.js
    end
  end

  # 
  # Deletes the app from users list
  # 
  def uninstall
    current_user.apps.delete @app
    respond_to do |format|
      format.html { redirect_to apps_url }
      format.js
    end
  end

  private
    # 
    # get our app
    # 
    def set_app
      @app = App.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:name, :description, :publisher, :version, :size, :price, :image)
    end
end
