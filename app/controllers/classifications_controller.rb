
class ClassificationsController < ApplicationController

  def index
    
  end

  def show
    @classification = Classification.find_by_name(params[:id].singularize)
  end
  
end