class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    user = current_user
    # @posts = user.feed.all
    @posts = Post.all
  end

  def help
  end

  #aboutページだけyield使わない
  def about
    render layout: false
  end

  def contact
  end

  private

    # ユーザーのステータスフィードを返す
    def feed
      following_ids = "SELECT followed_id FROM relationships
                      WHERE follower_id = :user_id"
      Post.where("user_id IN (#{following_ids})
                      OR user_id = :user_id", user_id: id)
    end
end
