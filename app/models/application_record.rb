class ApplicationRecord < ActiveRecord::Base
  validates :title, presence: true
end
