# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

Rails.application.routes.draw do
  root :to => 'posts#new' 
  devise_for :users
  resources :users
  resources :posts, only: %i[index create new]

end
# rubocop:enable Style/FrozenStringLiteralComment
