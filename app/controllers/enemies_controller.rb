class EnemiesController < ApplicationController

  before_filter :find_forge

  def show
    @enemy = Enemy.find(params[:id])
  end

  def update
    @start_time = Time.now
    @enemy = Enemy.find(params[:id])

    if params[:winner] == "enemy"
      @forge.generate_battle_loss_event
    else
      @forge.generate_battle_win_event
    end

    set_new_forge_events(@start_time)

    render :json => { :new_events => @new_events,
                      :new_events_html => @new_events_html}
  end

  def find_forge
    @forge = Forge.find(params[:forge_id])
  end

end