class Ability
  include CanCan::Ability

  def initialize(user)
    
      user ||= User.new # guest user (not logged in)
      if user.has_role? :admin
         can :manage, :all
     else
        can :read, Profile
        can :write, Profile, :id => Profile.with_role(:moderator, user).map{ |profile| profile.id }
	
     end
  end
end
