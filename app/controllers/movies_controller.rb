class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end
    
  def create
    @movie = Movie.new(title: params[:movie][:title],
    release_year: params[:movie][:release_year],
    synopsis: params[:movie][:synopsis],
    country_of_origin: params[:movie][:country_of_origin],
    duration: params[:movie][:duration],
    director_id: params[:movie][:director_id],
    genre_id: params[:movie][:genre_id])
  
    if @movie.save
      flash[:notice] = 'Informações salvas com sucesso'
      return redirect_to new_movie_path
    end
   
    render :new
  end

  def show
    @movie = Movie.find(params[:id])
  end
end