# app/policies/job_application_policy.rb
class JobApplicationPolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    user.admin? || record.user_id == user.id
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
