class SpacecraftsController < ApplicationController
  before_action :set_spacecraft, only: [ :user, :show, :edit, :update, :destroy ]

  def user
    @user = @spacecraft.user
  end

  def index
    @spacecrafts = Spacecraft.all
  end

  def show
  end

  def new
    # @user = User.find(params[:user_id])
    @spacecraft = Spacecraft.new # to initialize the form
  end

  def create
    @spacecraft = Spacecraft.new(spacecraft_params)
    @spacecraft.save
    if @spacecraft.save
      redirect_to spacecraft_path(@spacecraft)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @spacecraft.update(spacecraft_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to spacecraft_path(@spacecraft)
  end

  def destroy
    @spacecraft.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to spacecraft_path
  end

  private

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:id])
  end

  def spacecraft_params
    params.require(:spacecraft).permit(:name, :capacity, :type, :location, :description, :user)
  end
end
