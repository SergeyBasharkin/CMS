class PagePolicy < ApplicationPolicy
  def edit?
    @user.role == 'administrator' ||
        @record.user_id==@user.id
  end

  def destroy?
    @user.role == 'administrator' ||
      @record.user_id == @user.id
  end
end
