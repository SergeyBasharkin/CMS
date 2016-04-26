class PaginatingDecorator < Draper::CollectionDecorator
  delegate :current_page, :total_pages, :limit_value, :entry_name, :total_count, :offset_value, :last_page?
  def right_menu
    object.where(position: 'right_menu')
  end
  def top_menu
    object.where(position: 'top_menu')
  end
end
