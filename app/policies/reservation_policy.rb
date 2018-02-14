class ReservationPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user,scope)
      @user = user
      @scope = scope
    end

    def resolve
      reservations = []
      if user && user.admin?
        reservations = scope.all
      elsif user && user.standard?
        reservations = []
      else
        user = false
      end
      reservations
    end
  end
end
