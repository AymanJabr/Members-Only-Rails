# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
end
# rubocop:enable Style/FrozenStringLiteralComment
