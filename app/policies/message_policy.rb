class MessagePolicy < ApplicationPolicy
  def create?
    not(user.email.blank?)
  end
end
