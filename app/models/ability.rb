class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :user
      can :manage, :all
    else
      can :read, Contact
    end
  end
end
