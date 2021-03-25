# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

class AddUserIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id
  end
end
# rubocop:enable Style/FrozenStringLiteralComment
