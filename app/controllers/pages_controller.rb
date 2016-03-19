class PagesController < ApplicationController

  expose(:page, attributes: :page_params)#если есть id ищем -нет новый создаем

  def new

  end

  def home

  end

  def create

    page.user=current_user
    #binding.pry
    page.save

    respond_with page #views/pages/_page.html.slim
  end

  def show

  end

  def test

  end
  def update
    page.save
  end

  def destroy
    page.destroy
  end

  def page_params
    params.require(:page).permit(:title, :body)
  end

end
