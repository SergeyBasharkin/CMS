class AddDefaultPositionToPages < ActiveRecord::Migration
  def change
    change_column_default :pages, :position, "top_menu"
  end
end
