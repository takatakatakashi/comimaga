class MangasController < ApplicationController

  def index
    @manga = Manga.all
  end

  def new
    @manga = Manga.new
    @manga.tags.build
  end

  def create
    @tags_box = Manga.t_split( manga_params[:tags_attributes][:"0"][:tag])
    Manga.create(manga_params)
    @tags_box.each do |tag|
      if tag
        Tag.create(manga_id: params[:id], tag: tag)
      end
    end
    redirect_to root_path
  end
  
  private
  def manga_params
    params.require(:manga).permit(:title, :comment, :image, :author, tags_attributes: [:tag])
  end

end
