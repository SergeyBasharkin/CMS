class PageDecorator < ApplicationDecorator
delegate :title, :url, :index, :body, :position


def author
  object.user.full_name
end

def author_role
  object.user.role
end
end
