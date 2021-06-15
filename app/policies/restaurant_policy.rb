class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record_belongs_to_user?
  end

  def create?
    record_belongs_to_user?
  end

  def destroy?
    record_belongs_to_user?
  end

  private

  def record_belongs_to_user?
    record.user == user
  end
end
