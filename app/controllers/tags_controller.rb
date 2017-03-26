class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.destroy(params[:id])

    flash.notice = "Tag '#{@tag.name}' Deleted!"

    redirect_to tag_path
  end

  def show
    @tag = Tag.find(params[:id])
  end
end