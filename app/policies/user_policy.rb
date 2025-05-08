class UserPolicy < ApplicationPolicy
  # app/policies/user_policy.rb
  def index?
    user.admin?
  end

  def show?
    user.admin? || user.id == record.id
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
