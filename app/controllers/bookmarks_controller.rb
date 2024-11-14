class BookmarksController < ApplicationController

  def new
    # récupère la list qui est liée
    @list = List.find(params[:list_id])
    # coquille vide d'un bookmark
    @bookmark = Bookmark.new
    # récupération de toutes les movies
    # choix du user sur la movie dans la view et récupérationd e l'id
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    # la list liée au bookmark créée sera celui identifié avant
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
