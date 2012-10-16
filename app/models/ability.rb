class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest User
    
    if user.role? == :manager
      can :manage, Subdivision
      can :read, Repot
      can :manage, User #do |employe|
       # employe.try(:user) == user || user.role?(:manager)  
      #end
    else
      can :manage, Repot
      can :manage, User
    end
  end
end

