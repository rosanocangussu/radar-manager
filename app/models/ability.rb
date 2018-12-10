class Ability
  include CanCan::Ability

  def initialize(user)

    if user
      if user.kind == 'manager'
        can :manage, :all
      elsif user.kind == 'leader'
        can :access, :rails_admin
        can :dashboard
        can :manage, :Radar, user_id: user.id
        can :manage, :Team, user_id: user.id
        can :manage, :Ring, user_id: user.id 
        can :manage, :all
      elsif user.kind == "led"
        can :manage, :all
        #can :access, :rails_admin
        #can :dashboard
        #can :manage, :Radar, user_id: user.id
      end
    end
    
  end
end
