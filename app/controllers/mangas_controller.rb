class MangasController < ApplicationController

  def index
    @manga = Manga.all
  end

  def new
    @manga = Manga.new
  end
  
end
