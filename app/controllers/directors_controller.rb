class DirectorsController < ApplicationController
  def new
    @director = Director.new
  end
  
  def create
    @director = Director.new(name: params[:director][:name],
    nationality: params[:director][:nationality],
    birth_date: params[:director][:birth_date],
    genre_id: params[:director][:genre_id])
  
    if @director.save
      flash[:notice] = 'Informações salvas com sucesso'
      return redirect_to new_director_path
    end
  
    render :new
  end

  def show
    @director = Director.find(params[:id])
  end


end