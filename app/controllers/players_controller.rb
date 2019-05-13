class PlayersController < ApplicationController

  # This method will inject dynamic info in our view
  def index
    @players = Player.all
  end

  def new
  end

  def create
    player = Player.new(player_params)

    if player.save
      redirect_to "/players"
    else
      flash[:errors] = player.errors.full_messages
      redirect_to "/players/new"
    end
  end

private
  def player_params
    params.require(:player).permit(:first_name, :last_name)
  end

end
