class GuidePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def edit

  end

  def destroy

  end

  private

  def user_is_guide?

  end
end
