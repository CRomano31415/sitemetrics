class RAppsController < ApplicationController
  before_action :authenticate_user!

  def index
    @r_apps = RApp.where(user_id: current_user.id)
  end

  def show
    @r_app = RApp.find(params[:id])
  end

  def new
    @r_app = RApp.new
  end

  def create
    @r_app = RApp.new(r_app_params)
    @r_app.user = current_user 
    
      if @r_app.save
        flash[:notice] = "Application was registered successfully"
        redirect_to @r_app 
      else
        flash.now[:alert] = "Error registering application. Please try again"
        render :new
      end 
  end 

  def edit
    @r_app = RApp.find(params[:id])
  end

  def update
     @r_app = RApp.find(params[:id])
     @r_app.assign_attributes(r_app_params)

      if @r_app.save
        flash[:notice] = "#{@r_app.name} was updated successfully."
        redirect_to @r_app
      else
        flash.now[:alert] = "Error registering application. Please try again."
        render :edit
      end
  end

  def destroy
    @r_app = RApp.find(params[:id])

     if @r_app.destroy
       flash[:notice] = "\"#{@r_app.name}\" was deleted successfully."
       redirect_to action: :index
     else
       flash.now[:alert] = "There was an error deleting the registered_application."
       render :show
     end
  end

  private 

  def r_app_params
    params.require(:r_app).permit(:name, :url)
  end 
    
end
