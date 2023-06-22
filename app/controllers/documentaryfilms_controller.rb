class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilm = Documentaryfilm.all
  end

  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilms_params)

    if @documentaryfilm.save
      redirect_to documentaryfilms_index_path
    else
      render :new
    end
  end

  def new #new queda asi porque acá está el formulario
  end

  def documentaryfilms_params
    params.require(:documentaryfilm).permit(:name, :synopsis, :director)
  end
end
