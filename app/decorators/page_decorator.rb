class PageDecorator < ApplicationDecorator
  delegate :id,:title, :url, :index, :body, :position, :versions


  def author
    object.user.full_name
  end

  def author_role
    object.user.role
  end
end
