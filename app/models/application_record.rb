# rubocop:disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

# rubocop:disable Style/Documentation
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
# rubocop:enable Style/Documentation
# rubocop:enable Style/FrozenStringLiteralComment
