class DocumentaryFilmsController < ApplicationController
  def index
    @documentary_film = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_films_params)

    if @documentary_film.save
      redirect_to documentary_films_index_path
    else
      render :new
    end
  end

  def new #new queda asi porque acá está el formulario
  end

  def documentary_films_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
