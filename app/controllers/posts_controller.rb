class PostsController < ApplicationController
   before_action :setContext, except: [:new, :create] 
   def new
      @post = Post.new(posts_param) 
   end

   def create
      @post = Post.new 
   end
   def index
      
   end

  
end
