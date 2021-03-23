# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :body
      t.string :username
      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
