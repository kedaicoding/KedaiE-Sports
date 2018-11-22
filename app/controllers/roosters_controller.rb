class RoostersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @rooster = Rooster.new
  end
  

  def update
  end

  def delete
  end

  private

  def roosters_params
    params
    .require(:teams)
    .permit(:nama_team, :logo_team, :alamat, :game , :email, :manajer, roosters_attributes: Rooster.attribute_names.map(&:to_sym).push(:_destroy))    
  end
  
end
