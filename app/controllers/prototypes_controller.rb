class PrototypesController < ApplicationController 
    def new
      @prototype= Prototype.new
    end
  
    def create
      @prototype= Prototype.new(prototypes_params)
  if @prototype.save
    redirect_to root_path
  else
    render :new
  end
    
   
  end

    private

    def prototypes_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    end

  end

