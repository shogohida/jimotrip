class GuidePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy

  end
end
