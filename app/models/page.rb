class Page < ActiveRecord::Base
  validates :title, :body, :user_id, :position, presence: true
  validates :position, inclusion: { in: %w(top_menu right_menu) }
  belongs_to :user
end
