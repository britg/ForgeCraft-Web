
class ItemsController < ApplicationController

  before_filter :armory_nav
  respond_to :html, :js

  def index
    @items = Item.all
  end

  def show
    select_nav('armory')
    @item = Item.find(params[:id])
  end

  def new
    @ore = Ore.find(params[:ore])
    @item = @class.items.build( :name => "#{@ore} #{@class.to_s.singularize}", 
                                :ore_id => @ore.to_param )
  end

  def create
    @item = Item.new(params[:item])
    @item.save

    respond_with @item
  end

  def edit
    @item = Item.find_by_id(params[:id])
  end

  def update
    @item = Item.find_by_id(params[:id])
    @item.update_attributes(params[:item])

    if single = params[:single]
      render :text => @item[single] and return
    end

    respond_with @item
  end

  def destroy
    require_admin!
    @item = Item.find_by_id(params[:id])
    @item.destroy

    respond_with true
  end

  protected

  def armory_nav
    select_nav('armory')
  end

end