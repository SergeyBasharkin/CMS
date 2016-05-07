class PagePolicy < ApplicationPolicy
  def edit?
    @user && (@user.role == 'administrator' ||
        @record.user_id==@user.id)
  end

  def destroy?
    @user && (@user.role == 'administrator' ||
      @record.user_id == @user.id)
  end
end
