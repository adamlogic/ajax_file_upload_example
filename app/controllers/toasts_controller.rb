class ToastsController < ApplicationController
  def new
    @toast = Toast.new
  end
  
  def create
    @toast = Toast.new(params[:toast])

    if @toast.save
      flash.now[:notice] = "#{@toast.bread} toast!"
    else
      flash.now[:notice] = "No toast!"
    end
  end
end
