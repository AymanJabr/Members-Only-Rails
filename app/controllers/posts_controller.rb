class PostsController < ApplicationController
   before_action :authenticate_user!, except: [:new, :create] 
   def new
      @post = Post.new
   end

   def index
      @post = Post.all
   end

   def create
    @post = Post.new(post_params)
   #  @post.user_id = current_user.id
    

    if @post.save
      @posts = Post.all
      render :index
    else
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:body, :user_id)
    end


  
end
