class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    new_bookmark = Bookmark.new(params.require(:bookmark).permit(:comment))
    new_bookmark.save
  end

  def destroy
    @bookmark.destroy

  end
end
