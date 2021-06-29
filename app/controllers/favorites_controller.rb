class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end
  def create
    favorite = current_user.favorites.create(session_login_id: params[:session_login_id])
    redirect_to session_logins_path, notice: "#{favorite.session_login.user.name}さんのブログをお気に入り登録しました"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to session_logins_path, notice: "#{favorite.session_login.user.name}さんのブログをお気に入り解除しました"
  end
end
