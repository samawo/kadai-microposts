class FavoritesController < ApplicationController
  def create
    micropost=Micropost.find(params[:micropost_id])
    current_user.fav(micropost)
    flash[:success]="マイクロポットをお気に入りしました。"
    redirect_back(fallback_location: root_path)   
  end

  def destroy
    micropost=Micropost.find(params[:micropost_id])
    current_user.unfav(micropost)
    flash[:success]="お気に入りを解除しました。"
    redirect_back(fallback_location: root_path)
  end
end
