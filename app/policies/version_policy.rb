class VersionPolicy < ApplicationPolicy
  def accept?
    @user && @user.role == 'administrator'
  end

  def show?
    @user&&(@user.role == 'administrator' ||
        @record.user_id == @user.id)
  end
  def destroy?
    @user && (@user.role == 'administrator' ||
        @record.user_id == @user.id)
  end
end