class FavoritesController < ApplicationController
  def new
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @favorite = current_user.favorites.find_or_create_by(post_id: params[:post_id])
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @favorite = current_user.favorites.find_by(post_id: params[:id])
    @favorite.destroy 
  end
end
