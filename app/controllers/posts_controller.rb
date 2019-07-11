class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.user
    @like = Like.new
    data = [@post.data1, @post.data2, @post.data3, @post.data4, @post.data5]
    gon.data = data.reject { |data| data.blank? }
    # @user_comment = User.joins("LEFT OUTER JOIN comments ON users.id = comments.user_id").select("users.*, comments.*").joins("LEFT OUTER JOIN posts ON post.id = comments.post_id").select("posts.*, comments.*")
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to("/")
  end
  

  def destroy
    @post.destroy
    flash[:success] = "Post deleted"
    redirect_to("/")
  end

  private
    
    def post_params
      params.require(:post).permit(:content, :title,
                                   :data1, :data2, :data3, :data4, :data5, :picture,:remove_picture)
    end

    #正しいユーザーか確認
    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end
end



