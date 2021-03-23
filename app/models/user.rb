# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

class User < ApplicationRecord
  has_many :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
# rubocop:enable Style/FrozenStringLiteralComment
