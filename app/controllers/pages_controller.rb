class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @spacecrafts = Spacecraft.all
  end
end
