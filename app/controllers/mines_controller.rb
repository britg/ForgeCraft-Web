class MinesController < ApplicationController

  before_filter :set_nav, :set_zones

  def index
    @mine = current_player.try(:mine)
    render "show"
  end

  def show
    @mine = Mine.find(params[:id])
  end

  def update
    @mine = Mine.find(params[:player][:mine_id])
    current_player.travel_to(@mine) if current_player.can_travel_to?(@mine)
    render :json => current_player
  end

  def set_nav
    select_nav 'map'
  end

  def set_zones
    @zones = Zone.all
  end

end