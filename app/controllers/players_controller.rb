class PlayersController < ApplicationController

  # This method will inject dynamic info in our view
  def index
    @players = Player.all
  end

  def new
  end
end
