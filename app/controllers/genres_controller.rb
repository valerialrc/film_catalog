class GenresController < ApplicationController
    def new
      @genre = Genre.new
    end
  
    def create
      @genre = Genre.new(name: params[:genre][:name])
  
      if @genre.save
        flash[:notice] = 'Informações salvas com sucesso'
        return redirect_to new_genre_path
      end
  
      render :new
    end

    def show
      @genre = Genre.find(params[:id])
    end
  end