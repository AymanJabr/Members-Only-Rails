# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

# rubocop:disable Style/Documentation

class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @post = Post.new
  end

  def index
    @post = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      @post = Post.all
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
# rubocop:enable Style/Documentation
# rubocop:enable Style/FrozenStringLiteralComment
