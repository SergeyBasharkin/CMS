class Page < ActiveRecord::Base
  validates   :title, :body, :user_id, :position, presence: true
  validates :position, inclusion: { in: %w(top_menu right_menu) }
  belongs_to :user
  has_paper_trail :on => [:update, :destroy]
  scope :sorted,-> { order(title: :asc) }
  scope :right_menu,->{where(position: 'right_menu')}
  scope :top_menu, ->{where(position: 'top_menu')}
end
