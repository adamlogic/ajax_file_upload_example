class ToastsController < ApplicationController
  def new
    @toast = Toast.new
  end
  
  def create
    @toast = Toast.new(params[:toast])
    sleep 2

    if @toast.save
      flash.now[:notice] = "success"
    else
      flash.now[:notice] = "error"
    end
  end
end
