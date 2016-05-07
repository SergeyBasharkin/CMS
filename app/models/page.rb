class Page < ActiveRecord::Base
  validates   :title, :body, :user_id, :position, presence: true
  validates :position, inclusion: { in: %w(top_menu right_menu) }
  belongs_to :user
  has_paper_trail :on => [:update, :destroy]
  scope :sorted,-> { order(title: :asc) }
end
