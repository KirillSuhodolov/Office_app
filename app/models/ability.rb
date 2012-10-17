class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest User


  if user.role == "admin"
    can [:create, :read, :update], Organization
    can [:create, :read, :destroy], User
    can [:read], Report
    can [:read], Subdivision
  end

  if user.role == "manager"
    can [:create, :read, :update], Subdivision
    can :read, Report
    can [:create, :read, :update], User    
  end

  if user.role == "employe"
    can :manage, Report
   # can :read, User 
  end

  end
end

