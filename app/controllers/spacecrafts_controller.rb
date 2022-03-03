class SpacecraftsController < ApplicationController
  before_action :set_spacecraft, only: [ :user, :show, :edit, :update, :destroy ]

  def user
    @user = @spacecraft.user
  end

  def index
    @spacecrafts = Spacecraft.all

    @markers = @spacecrafts.map do |spacecraft|
      {
        lat: spacecraft.latitude,
        lng: spacecraft.longitude,
        info_window: render_to_string(partial: "info_window", locals: { spacecraft: spacecraft })
      }
    end
  end

  def show
    @spacecrafts = Spacecraft.all
  end

  def new
    # @user = User.find(params[:user_id])
    @spacecraft = Spacecraft.new # to initialize the form
    @spacecrafts = Spacecraft.where(user_id: current_user)
  end

  def create
    @spacecraft = Spacecraft.new(spacecraft_params)
    @spacecraft.user = current_user
    if @spacecraft.save
      redirect_to spacecrafts_path(@spacecraft)
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
    @spacecraft = Spacecraft.find(set_spacecraft)
    @spacecraft.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to spacecraft_path#(@spacecraft.review)
  end

  private

  def set_spacecraft
    @spacecraft = Spacecraft.find(params[:id])
  end

  def spacecraft_params
    params.require(:spacecraft).permit(:name, :capacity, :category, :location, :description, :user, :photo)
  end
end
