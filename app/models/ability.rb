class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    can :manage, Favorite, :user_id => user.id

    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
