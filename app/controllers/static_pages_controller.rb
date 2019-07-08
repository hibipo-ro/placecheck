class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    user = current_user
    @posts = user.feed.all
  end

  def help
  end

  #aboutページだけyield使わない
  def about
    render layout: false
  end

  def contact
  end
end
