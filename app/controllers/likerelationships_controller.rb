class LikerelationshipsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.addlike(micropost)
    flash[:success] = 'お気に入りを追加しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.deletelike(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
end
