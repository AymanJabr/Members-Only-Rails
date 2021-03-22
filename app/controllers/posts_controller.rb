class PostsController < ApplicationController
   before_action :setContext, except: [:new, :create] 
   def new
      @post = Post.new
   end

   def create
      @post = Post.new 
   end
   def index
      
   end

  
end
